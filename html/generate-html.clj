; Generate html for the songs
; Run: find ../songs/*/parts -name "*.ly" | clojure generate-html.clj

(require '[hiccup.core :refer [html h]])
(require '[clojure.string :as s])
(require '[clojure.pprint :refer [pprint]])

(def part-order
  ["a4" "a5" "a8"
   "coro-I" "cantus-I" "altus-I" "tenor-I" "bassus-I"
   "coro-II" "cantus-II" "altus-II" "tenor-II" "bassus-II"
   "cantus" "altus" "tenor" "bassus"])

(def titles
  {"a4" "Kaikki stemmat: cantus, altus, tenor ja bassus"
   "a5" "Kaikki stemmat: cantus I & II, altus, tenor ja bassus"
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

(defn- makefilename
  ([filename-parts filename-part-count suffix]
   (as-> filename-parts $
         (subvec $ 0 filename-part-count)
         (conj $ suffix)
         (s/join "." $)))
  ([filename-parts suffix]
   (makefilename filename-parts 2 suffix)))

(defn- makepath
  ([path-parts path-parts-first filename-parts filename-part-count suffix]
   (as-> path-parts $
         (subvec $ path-parts-first 4)
         (conj $ (makefilename filename-parts filename-part-count suffix))
         (s/join "/" $)))
  ([path-parts filename-parts suffix]
   (makepath path-parts 1 filename-parts 2 suffix)))

(defn parse-filename [files filename]
  (let [path-parts (s/split filename #"/")
        filename-parts (s/split (last path-parts) #"\.")
        id (nth path-parts 2)]
    (merge-with
     into files
     {(keyword id)
      [{:pdf-file (makefilename filename-parts "pdf")
        :midi-file (makefilename filename-parts "midi")
        :id id
        :pdf-path (makepath path-parts filename-parts "pdf")
        :midi-path (makepath path-parts filename-parts "midi")
        :header-path (makepath path-parts 0 filename-parts 1 "header.ily")
        :part-id (second filename-parts)
        :part (-> filename-parts
                  second
                  make-title)}]})))


; {:filename aetas-carmen-melodiae.a4.ly, :id aetas-carmen-melodiae, :part A4}
(defn- part-html [part]
  (list
   [:dt (:part part)]
   [:dd
    [:a {:href (:pdf-path part)} (:pdf-file part)]]
   [:dd
    [:a {:href (:midi-path part)} (:midi-file part)]]))

(defn- sort-parts [parts]
  (sort-by #(part-index (:part-id %)) parts))

(defn- parse-header [header field]
  (let [pattern (re-pattern (str " " field " = \"([^\"]*)\""))]
    (last (re-find pattern header))))

(defn- read-meta [filename]
  (let [header (slurp filename)
        composer (parse-header header "composer")
        poet (parse-header header "poet")
        title (parse-header header "title")]
    [title composer poet]))

(defn- parse-meta [m [id parts]]
  (merge m
    {id (read-meta (-> parts first :header-path))}))

(defn- song-html [songs-meta]
  (fn [[id parts]]
    (let [[title composer poet] (id songs-meta)]
      (list
       [:h2 {:id id}
        title]
       [:dl
        (when composer
          [:dt {:class "composer"}
           "säveltäjä: " composer
           (when poet [:span ", " [:br] poet])])
        (for [part (sort-parts parts)]
          (part-html part))]))))

(defn- create-index [songs songs-meta]
  [:ul
   (for [[id _] songs]
     [:li
      [:a {:href (str "#" (name id))} (-> songs-meta id first)]])])

(defn main []
  (let [songs (->> files-in
                   (reduce parse-filename {})
                   sort)
        songs-meta (reduce parse-meta {} songs)
        songs-html (map (song-html songs-meta) songs)
        index-html (create-index songs songs-meta)]
    ; (println "<!--\n *** songs:")
    ; (pprint songs)
    ; (println "\n *** meta:")
    ; (pprint songs-meta)
    ; (println " -->")
    (println (slurp "head.html"))
    (println
     (html
      (list
        [:hr]
        [:section
         [:h2 "Yksittäiset kappaleet"]
         index-html]
        [:hr]
        [:section
         songs-html]
        [:hr])))
    (println "\n</body>\n</html>\n")))

(main)
