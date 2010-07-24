(define (problem TPP)
(:domain TPP-PropositionalPreferences)
(:objects
	goods1 goods2 goods3 goods4 goods5 goods6 goods7 goods8 goods9 goods10 goods11 goods12 - goods
	truck1 truck2 truck3 - truck
	market1 market2 market3 - market
	depot1 depot2 - depot
	level1 level2 level3 level4 level5 - level)

(:init
	(next level1 level0)
	(next level2 level1)
	(next level3 level2)
	(next level4 level3)
	(next level5 level4)
	(ready-to-load goods1 market1 level0)
	(ready-to-load goods1 market2 level0)
	(ready-to-load goods1 market3 level0)
	(ready-to-load goods1 depot1 level0)
	(ready-to-load goods1 depot2 level0)
	(ready-to-load goods2 market1 level0)
	(ready-to-load goods2 market2 level0)
	(ready-to-load goods2 market3 level0)
	(ready-to-load goods2 depot1 level0)
	(ready-to-load goods2 depot2 level0)
	(ready-to-load goods3 market1 level0)
	(ready-to-load goods3 market2 level0)
	(ready-to-load goods3 market3 level0)
	(ready-to-load goods3 depot1 level0)
	(ready-to-load goods3 depot2 level0)
	(ready-to-load goods4 market1 level0)
	(ready-to-load goods4 market2 level0)
	(ready-to-load goods4 market3 level0)
	(ready-to-load goods4 depot1 level0)
	(ready-to-load goods4 depot2 level0)
	(ready-to-load goods5 market1 level0)
	(ready-to-load goods5 market2 level0)
	(ready-to-load goods5 market3 level0)
	(ready-to-load goods5 depot1 level0)
	(ready-to-load goods5 depot2 level0)
	(ready-to-load goods6 market1 level0)
	(ready-to-load goods6 market2 level0)
	(ready-to-load goods6 market3 level0)
	(ready-to-load goods6 depot1 level0)
	(ready-to-load goods6 depot2 level0)
	(ready-to-load goods7 market1 level0)
	(ready-to-load goods7 market2 level0)
	(ready-to-load goods7 market3 level0)
	(ready-to-load goods7 depot1 level0)
	(ready-to-load goods7 depot2 level0)
	(ready-to-load goods8 market1 level0)
	(ready-to-load goods8 market2 level0)
	(ready-to-load goods8 market3 level0)
	(ready-to-load goods8 depot1 level0)
	(ready-to-load goods8 depot2 level0)
	(ready-to-load goods9 market1 level0)
	(ready-to-load goods9 market2 level0)
	(ready-to-load goods9 market3 level0)
	(ready-to-load goods9 depot1 level0)
	(ready-to-load goods9 depot2 level0)
	(ready-to-load goods10 market1 level0)
	(ready-to-load goods10 market2 level0)
	(ready-to-load goods10 market3 level0)
	(ready-to-load goods10 depot1 level0)
	(ready-to-load goods10 depot2 level0)
	(ready-to-load goods11 market1 level0)
	(ready-to-load goods11 market2 level0)
	(ready-to-load goods11 market3 level0)
	(ready-to-load goods11 depot1 level0)
	(ready-to-load goods11 depot2 level0)
	(ready-to-load goods12 market1 level0)
	(ready-to-load goods12 market2 level0)
	(ready-to-load goods12 market3 level0)
	(ready-to-load goods12 depot1 level0)
	(ready-to-load goods12 depot2 level0)
	(stored goods1 level0)
	(stored goods2 level0)
	(stored goods3 level0)
	(stored goods4 level0)
	(stored goods5 level0)
	(stored goods6 level0)
	(stored goods7 level0)
	(stored goods8 level0)
	(stored goods9 level0)
	(stored goods10 level0)
	(stored goods11 level0)
	(stored goods12 level0)
	(loaded goods1 truck1 level0)
	(loaded goods1 truck2 level0)
	(loaded goods1 truck3 level0)
	(loaded goods2 truck1 level0)
	(loaded goods2 truck2 level0)
	(loaded goods2 truck3 level0)
	(loaded goods3 truck1 level0)
	(loaded goods3 truck2 level0)
	(loaded goods3 truck3 level0)
	(loaded goods4 truck1 level0)
	(loaded goods4 truck2 level0)
	(loaded goods4 truck3 level0)
	(loaded goods5 truck1 level0)
	(loaded goods5 truck2 level0)
	(loaded goods5 truck3 level0)
	(loaded goods6 truck1 level0)
	(loaded goods6 truck2 level0)
	(loaded goods6 truck3 level0)
	(loaded goods7 truck1 level0)
	(loaded goods7 truck2 level0)
	(loaded goods7 truck3 level0)
	(loaded goods8 truck1 level0)
	(loaded goods8 truck2 level0)
	(loaded goods8 truck3 level0)
	(loaded goods9 truck1 level0)
	(loaded goods9 truck2 level0)
	(loaded goods9 truck3 level0)
	(loaded goods10 truck1 level0)
	(loaded goods10 truck2 level0)
	(loaded goods10 truck3 level0)
	(loaded goods11 truck1 level0)
	(loaded goods11 truck2 level0)
	(loaded goods11 truck3 level0)
	(loaded goods12 truck1 level0)
	(loaded goods12 truck2 level0)
	(loaded goods12 truck3 level0)
	(connected market1 market2)
	(connected market1 market3)
	(connected market2 market1)
	(connected market2 market3)
	(connected market3 market1)
	(connected market3 market2)
	(connected depot1 market1)
	(connected market1 depot1)
	(connected depot1 market2)
	(connected market2 depot1)
	(connected depot1 market3)
	(connected market3 depot1)
	(connected depot2 market1)
	(connected market1 depot2)
	(connected depot2 market2)
	(connected market2 depot2)
	(connected depot2 market3)
	(connected market3 depot2)
	(on-sale goods1 market1 level0)
	(on-sale goods2 market1 level5)
	(on-sale goods3 market1 level0)
	(on-sale goods4 market1 level4)
	(on-sale goods5 market1 level2)
	(on-sale goods6 market1 level0)
	(on-sale goods7 market1 level0)
	(on-sale goods8 market1 level5)
	(on-sale goods9 market1 level0)
	(on-sale goods10 market1 level2)
	(on-sale goods11 market1 level0)
	(on-sale goods12 market1 level2)
	(on-sale goods1 market2 level4)
	(on-sale goods2 market2 level0)
	(on-sale goods3 market2 level4)
	(on-sale goods4 market2 level1)
	(on-sale goods5 market2 level2)
	(on-sale goods6 market2 level3)
	(on-sale goods7 market2 level3)
	(on-sale goods8 market2 level0)
	(on-sale goods9 market2 level2)
	(on-sale goods10 market2 level3)
	(on-sale goods11 market2 level1)
	(on-sale goods12 market2 level2)
	(on-sale goods1 market3 level1)
	(on-sale goods2 market3 level0)
	(on-sale goods3 market3 level1)
	(on-sale goods4 market3 level0)
	(on-sale goods5 market3 level0)
	(on-sale goods6 market3 level2)
	(on-sale goods7 market3 level0)
	(on-sale goods8 market3 level0)
	(on-sale goods9 market3 level0)
	(on-sale goods10 market3 level0)
	(on-sale goods11 market3 level4)
	(on-sale goods12 market3 level0)
	(at truck1 depot2)
	(at truck2 depot2)
	(at truck3 depot1))

(:goal (and
	(forall (?g - goods)
	   (preference p6A (exists (?l - level)
			     (and (not (= ?l level0)) (not (= ?l level1))
				  (stored ?g ?l)))))
	(forall (?g - goods)
	   (preference p5A (exists (?l - level)
			     (and (not (= ?l level0)) (not (= ?l level2))
				  (stored ?g ?l)))))
	(forall (?g - goods)
	   (preference p4A (exists (?l - level)
			     (and (not (= ?l level0)) (not (= ?l level3))
				  (stored ?g ?l)))))
	(forall (?g - goods)
	   (preference p3A (exists (?l - level)
			     (and (not (= ?l level0)) (not (= ?l level4))
				  (stored ?g ?l)))))))

(:constraints (and
	(forall (?g - goods)
	   (preference p8A
	      (at end (and (forall (?m - market) (ready-to-load ?g ?m level0))
			   (forall (?t - truck) (loaded ?g ?t level0))))))

	(forall (?m - market ?t - truck) (preference p0A (at-most-once (at ?t ?m))))

	(forall (?t - truck ?g - goods)
	   (preference p0B (at-most-once (exists (?l - level)
			      (and (loaded ?g ?t ?l) (not (= ?l level0)))))))

	(forall (?m - market ?t1 ?t2 - truck)
	   (preference p1A (always (imply (and (at ?t1 ?m) (at ?t2 ?m))
					  (= ?t1 ?t2)))))

	(forall (?t - truck)
	   (preference p2A (sometime (exists (?g - goods ?l - level)
			      (and (loaded ?g ?t ?l) (not (= ?l level0)))))))

	(forall (?l - level) (preference p7A
	   (sometime-before (and (not (= ?l level0)) (stored goods2 ?l))
			    (stored goods10 ?l))))
	(forall (?l - level) (preference p7B
	   (sometime-before (and (not (= ?l level0)) (stored goods2 ?l))
			    (stored goods11 ?l))))))

(:metric minimize (+ (* 1 (is-violated p0A))
		     (* 1 (is-violated p0B))
		     (* 2 (is-violated p1A))
		     (* 3 (is-violated p2A))
		     (* 8 (is-violated p3A))
		     (* 10 (is-violated p4A))
		     (* 12 (is-violated p5A))
		     (* 14 (is-violated p6A))
		     (* 15 (is-violated p7A))
		     (* 15 (is-violated p7B))
		     (* 16 (is-violated p8A))
		     (* 1 (is-violated p-drive))))
)
