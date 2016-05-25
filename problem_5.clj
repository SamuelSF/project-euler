(defn gcd [a b]
  (let [r (mod a b)]
    (if (= r 0)
      b
      (recur b r))))

(defn biggest-multiple [nums]
  (if (empty? (rest nums))
    (first nums)
    (let [m (biggest-multiple (rest nums))]
      (/
       (* (first nums) m)
       (gcd (first nums) m)))))

(biggest-multiple (loop [m (vector) n 1]
                    (if (= n 21)
                      m
                      (recur (conj m n) (inc n)))))
