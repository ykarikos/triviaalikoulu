; generate html for the songs
; Run: find ../songs/*/parts -name "*.ly" | clojure generate-html.clj
(require '[hiccup.core :refer [html h]])
(require '[clojure.string :as s])
(require '[clojure.pprint :refer [pprint]])

(def part-order
  ["a4" "cantus" "altus" "tenor" "bassus"
   "a8" "coro-I" "cantus-I" "altus-I" "tenor-I" "bassus-I"
   "coro-II" "cantus-II" "altus-II" "tenor-II" "bassus-II"])

(def titles
  {"a4" "Kaikki stemmat: cantus, altus, tenor ja bassus"
   "a8" "Kaikki stemmat: cantus I & II, altus I & II, tenor I & II ja bassus I & II"
   "coro-I" "Coro I: cantus I, altus I, tenor I ja bassus I"
   "coro-II" "Coro II: cantus II, altus II, tenor II ja bassus II"})

(def titles-ids (-> titles keys set))

(def part-index
  (->> part-order
    (map-indexed (fn [i e] [e i]))
    (into {})))

(def files-in
  (-> (slurp *in*)
      (s/split #"\n")))

(defn make-title [id]
  (if (titles-ids id)
    (h (get titles id))
    (-> (str (-> id first s/upper-case) (subs id 1))
        (s/replace "-" " "))))

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
        :part-id (second filename-parts)
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

(defn- sort-parts [parts]
  (sort-by #(part-index (:part-id %)) parts))

(defn- song-html [[id parts]]
  [:div
   [:h2 {:id id}
    (-> parts first :title)]
   [:dl
    (for [part (sort-parts parts)]
      (part-html part))]])

(defn main []
  (let [songs (reduce parse-filename {} files-in)
        songs-html (map song-html songs)]
    (println "<!--")
    (pprint songs)
    (println " -->")
    (println (html songs-html))))

(main)
