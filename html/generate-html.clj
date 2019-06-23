; generate html for the songs
; Run: find ../songs/*/parts -name "*.ly" | clojure generate-html.clj
(require '[hiccup.core :refer [html]])
(require '[clojure.string :as s])

(def files-in
  (-> (slurp *in*)
      (s/split #"\n")))

(defn make-title [id]
  (->> (s/split id #"-")
       (map s/capitalize)
       (s/join " ")))

(defn- makefilename [filename-parts suffix]
  (as-> filename-parts $
        (subvec $ 0 2)
        (conj $ suffix)
        (s/join "." $)))

(defn- makepath [path-parts filename-parts suffix]
  (as-> path-parts $
        (subvec $ 1 4)
        (conj $ (makefilename filename-parts suffix))
        (s/join "/" $)))

(defn parse-filename [files filename]
  (let [path-parts (s/split filename #"/")
        filename-parts (s/split (last path-parts) #"\.")
        id (first filename-parts)]
    (merge-with
     into files
     {(keyword id)
      [{:pdf-file (makefilename filename-parts "pdf")
        :midi-file (makefilename filename-parts "midi")
        :id id
        :pdf-path (makepath path-parts filename-parts "pdf")
        :midi-path (makepath path-parts filename-parts "midi")
        :part (-> filename-parts
                  second
                  make-title)
        :title (make-title id)}]})))

; {:filename aetas-carmen-melodiae.a4.ly, :id aetas-carmen-melodiae, :part A4, :title Aetas Carmen Melodiae}
(defn- part-html [part]
  [:div
   [:dt (:part part)]
   [:dd
    [:a {:href (:pdf-path part)} (:pdf-file part)]]
   [:dd
    [:a {:href (:midi-path part)} (:midi-file part)]]])


(defn- song-html [[id parts]]
  [:div
   [:h2 {:id id}
    (-> parts first :title)]
   [:dl
    (for [part parts]
      (part-html part))]])

(defn main []
  (let [songs (reduce parse-filename {} files-in)
        songs-html (map song-html songs)]
    (println (html songs-html))))

(main)
