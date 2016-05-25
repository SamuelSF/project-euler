(defn gcd [a b]
  (let [r (mod a b)]
    (if (= r 0)
      b
      (recur b r))))

(defn lcm [a b]
  (/ (* a b) (gcd a b)))

(defn biggest-multiple [nums]
  (reduce lcm nums))

(defn range-to-vector [start stop]
  (loop [n start result []]
    (if (> n stop)
      result
      (recur (inc n) (conj result n)))))

(println (biggest-multiple (range-to-vector 1 20)))
