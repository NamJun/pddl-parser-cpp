
(define (problem os-time-wbop_10_10-18-fixed9)
        (:domain openstacks-time)
        (:objects n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 - count o1 o2 o3 o4 o5 o6 o7 o8
         o9 o10 - order p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 - product)
        (:init (next-count n0 n1) (next-count n1 n2) (next-count n2 n3)
         (next-count n3 n4) (next-count n4 n5) (next-count n5 n6)
         (next-count n6 n7) (next-count n7 n8) (next-count n8 n9)
         (stacks-avail n9) (waiting o1) (includes o1 p1) (includes o1 p2)
         (includes o1 p9) (waiting o2) (includes o2 p5) (includes o2 p8)
         (includes o2 p9) (waiting o3) (includes o3 p2) (includes o3 p5)
         (includes o3 p10) (waiting o4) (includes o4 p4) (includes o4 p7)
         (includes o4 p9) (waiting o5) (includes o5 p1) (includes o5 p3)
         (includes o5 p6) (waiting o6) (includes o6 p3) (includes o6 p4)
         (includes o6 p6) (waiting o7) (includes o7 p2) (includes o7 p7)
         (includes o7 p10) (waiting o8) (includes o8 p4) (includes o8 p5)
         (includes o8 p7) (waiting o9) (includes o9 p6) (includes o9 p8)
         (includes o9 p10) (waiting o10) (includes o10 p1) (includes o10 p3)
         (includes o10 p8) (= (make-time p1) 10) (= (make-time p2) 90)
         (= (make-time p3) 40) (= (make-time p4) 90) (= (make-time p5) 40)
         (= (make-time p6) 100) (= (make-time p7) 80) (= (make-time p8) 20)
         (= (make-time p9) 30) (= (make-time p10) 70))
        (:goal
         (and (shipped o1)
              (shipped o2)
              (shipped o3)
              (shipped o4)
              (shipped o5)
              (shipped o6)
              (shipped o7)
              (shipped o8)
              (shipped o9)
              (shipped o10)))
        (:metric minimize (total-time)))
