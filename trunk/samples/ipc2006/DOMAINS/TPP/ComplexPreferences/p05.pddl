(define (problem pfile05)
(:domain TPP-MetricTimePreferences)
(:objects
	market1 market2 - market
	depot1 - depot
	truck1 truck2 - truck
	goods1 goods2 goods3 goods4 goods5 goods6 goods7 - goods)

(:init
	(= (price goods1 market1) 49)
	(= (ready-to-load goods1 market1) 0)
	(= (on-sale goods1 market1) 17)
	(= (price goods1 market2) 4)
	(= (ready-to-load goods1 market2) 0)
	(= (on-sale goods1 market2) 5)
	(= (ready-to-load goods1 depot1) 0)
	(= (price goods2 market1) 50)
	(= (ready-to-load goods2 market1) 0)
	(= (on-sale goods2 market1) 15)
	(= (price goods2 market2) 30)
	(= (ready-to-load goods2 market2) 0)
	(= (on-sale goods2 market2) 7)
	(= (ready-to-load goods2 depot1) 0)
	(= (price goods3 market1) 29)
	(= (ready-to-load goods3 market1) 0)
	(= (on-sale goods3 market1) 14)
	(= (price goods3 market2) 14)
	(= (ready-to-load goods3 market2) 0)
	(= (on-sale goods3 market2) 4)
	(= (ready-to-load goods3 depot1) 0)
	(= (ready-to-load goods4 market1) 0)
	(= (on-sale goods4 market1) 0)
	(= (price goods4 market2) 18)
	(= (ready-to-load goods4 market2) 0)
	(= (on-sale goods4 market2) 17)
	(= (ready-to-load goods4 depot1) 0)
	(= (price goods5 market1) 17)
	(= (ready-to-load goods5 market1) 0)
	(= (on-sale goods5 market1) 3)
	(= (price goods5 market2) 14)
	(= (ready-to-load goods5 market2) 0)
	(= (on-sale goods5 market2) 13)
	(= (ready-to-load goods5 depot1) 0)
	(= (ready-to-load goods6 market1) 0)
	(= (on-sale goods6 market1) 0)
	(= (price goods6 market2) 18)
	(= (ready-to-load goods6 market2) 0)
	(= (on-sale goods6 market2) 20)
	(= (ready-to-load goods6 depot1) 0)
	(= (ready-to-load goods7 market1) 0)
	(= (on-sale goods7 market1) 0)
	(= (price goods7 market2) 11)
	(= (ready-to-load goods7 market2) 0)
	(= (on-sale goods7 market2) 15)
	(= (ready-to-load goods7 depot1) 0)
	(connected market1 market2)
	(connected market2 market1)
	(= (drive-cost market1 market2) 516.00)
	(= (drive-cost market2 market1) 516.00)
	(= (drive-time market1 market2) 1548.00)
	(= (drive-time market2 market1) 1548.00)
	(connected depot1 market1)
	(connected market1 depot1)
	(= (drive-cost market1 depot1) 995.00)
	(= (drive-cost depot1 market1) 995.00)
	(= (drive-time market1 depot1) 2985.00)
	(= (drive-time depot1 market1) 2985.00)
	(connected depot1 market2)
	(connected market2 depot1)
	(= (drive-cost market2 depot1) 972.00)
	(= (drive-cost depot1 market2) 972.00)
	(= (drive-time market2 depot1) 2916.00)
	(= (drive-time depot1 market2) 2916.00)
	(= (loaded goods1 truck1) 0)
	(= (loaded goods2 truck1) 0)
	(= (loaded goods3 truck1) 0)
	(= (loaded goods4 truck1) 0)
	(= (loaded goods5 truck1) 0)
	(= (loaded goods6 truck1) 0)
	(= (loaded goods7 truck1) 0)
	(at truck1 depot1)
	(= (loaded goods1 truck2) 0)
	(= (loaded goods2 truck2) 0)
	(= (loaded goods3 truck2) 0)
	(= (loaded goods4 truck2) 0)
	(= (loaded goods5 truck2) 0)
	(= (loaded goods6 truck2) 0)
	(= (loaded goods7 truck2) 0)
	(at truck2 depot1)
	(= (stored goods1) 0)
	(= (stored goods2) 0)
	(= (stored goods3) 0)
	(= (stored goods4) 0)
	(= (stored goods5) 0)
	(= (stored goods6) 0)
	(= (stored goods7) 0)
	(= (total-cost) 0)
	(= (rebate-rate market1) 0.89)
	(= (rebate-rate market2) 0.81)
	(= (bought goods1) 0)
	(= (bought goods2) 0)
	(= (bought goods3) 0)
	(= (bought goods4) 0)
	(= (bought goods5) 0)
	(= (bought goods6) 0)
	(= (bought goods7) 0)
	(= (request goods1) 7)
	(= (request goods2) 15)
	(= (request goods3) 9)
	(= (request goods4) 5)
	(= (request goods5) 4)
	(= (request goods6) 16)
	(= (request goods7) 7))

(:goal (and
	(>= (stored goods1) (request goods1))
	(>= (stored goods2) (request goods2))
	(>= (stored goods3) (request goods3))
	(>= (stored goods4) (request goods4))
	(>= (stored goods5) (request goods5))
	(>= (stored goods6) (request goods6))
	(>= (stored goods7) (request goods7))))

(:constraints (and
	(forall (?g - goods)
	   (preference p5A (at end (forall (?m - market ?t - truck)
				       (and (= (ready-to-load ?g ?m) 0)
					    (= (loaded ?g ?t) 0))))))

	(forall (?t - truck ?g - goods)
	   (preference p1A (at-most-once (> (loaded ?g ?t) 0))))

	(forall (?m - market ?t - truck)
	   (preference p2A (at-most-once (at ?t ?m))))

	(forall (?m - market ?t1 ?t2 - truck)
	   (preference p1B (always (imply (and (at ?t1 ?m) (at ?t2 ?m))
					  (= ?t1 ?t2)))))

	(preference p0A (always (>= (stored goods6) (stored goods3))))

	(forall (?t - truck)
	   (preference p4A (always-within 3078.00 (> (loaded goods7 ?t) 0)
			      (= (loaded goods7 ?t) 0))))

	(forall (?t - truck)
	   (preference p4B (always-within 3078.00 (> (loaded goods4 ?t) 0)
			      (= (loaded goods4 ?t) 0))))

	(forall (?t - truck)
	   (preference p3A (sometime (exists (?g - goods) (> (loaded ?g ?t) 0)))))

	(preference p0B (sometime-before (> (stored goods7) 0)
			   (>= (stored goods2) (request goods2))))
	(preference p0C (sometime-before (> (stored goods1) 0)
			   (>= (stored goods5) (request goods5))))))

(:metric minimize (+ (* 1 (is-violated p0A))
		     (* 1 (is-violated p0B))
		     (* 1 (is-violated p0C))
		     (* 2 (is-violated p1A))
		     (* 2 (is-violated p1B))
		     (* 3 (is-violated p2A))
		     (* 4 (is-violated p3A))
		     (* 5 (is-violated p4A))
		     (* 5 (is-violated p4B))
		     (* 6 (is-violated p5A))
		     (* 1 (is-violated p-drive))))
)