; Map of the Depots:                                     
; 000=111 22 333 444 555             
; *0  *1  2* *3  4 * 5*              
;-----------------------             
; 0: depot0 area
; 1: depot1 area
; 2: depot2 area
; 3: depot3 area
; 4: depot4 area
; 5: depot5 area
; *: Depot access point
; =: Transit area

(define (problem storage-10)
(:domain Storage-TimePreferences)
(:objects
	depot0-1-1 depot0-1-2 depot0-1-3 depot0-2-1 depot0-2-2 depot1-1-1 depot1-1-2 depot1-1-3 depot1-2-1 depot1-2-2 depot2-1-1 depot2-1-2 depot2-2-1 depot2-2-2 depot3-1-1 depot3-1-2 depot3-1-3 depot3-2-1 depot3-2-2 depot4-1-1 depot4-1-2 depot4-1-3 depot4-2-1 depot4-2-3 depot5-1-1 depot5-1-2 depot5-1-3 depot5-2-1 depot5-2-2 container-0-0 container-0-1 container-0-2 container-0-3 container-1-0 container-1-1 container-1-2 container-1-3 container-2-0 container-2-1 - storearea
	hoist0 hoist1 hoist2 - hoist
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 - crate
	container0 container1 container2 - container
	depot0 depot1 depot2 depot3 depot4 depot5 - depot
	loadarea transit0 - transitarea)

(:init
	(connected depot0-1-1 depot0-2-1)
	(connected depot0-1-1 depot0-1-2)
	(connected depot0-1-2 depot0-2-2)
	(connected depot0-1-2 depot0-1-3)
	(connected depot0-1-2 depot0-1-1)
	(connected depot0-1-3 depot0-1-2)
	(connected depot0-2-1 depot0-1-1)
	(connected depot0-2-1 depot0-2-2)
	(connected depot0-2-2 depot0-1-2)
	(connected depot0-2-2 depot0-2-1)
	(connected depot1-1-1 depot1-2-1)
	(connected depot1-1-1 depot1-1-2)
	(connected depot1-1-2 depot1-2-2)
	(connected depot1-1-2 depot1-1-3)
	(connected depot1-1-2 depot1-1-1)
	(connected depot1-1-3 depot1-1-2)
	(connected depot1-2-1 depot1-1-1)
	(connected depot1-2-1 depot1-2-2)
	(connected depot1-2-2 depot1-1-2)
	(connected depot1-2-2 depot1-2-1)
	(connected depot2-1-1 depot2-2-1)
	(connected depot2-1-1 depot2-1-2)
	(connected depot2-1-2 depot2-2-2)
	(connected depot2-1-2 depot2-1-1)
	(connected depot2-2-1 depot2-1-1)
	(connected depot2-2-1 depot2-2-2)
	(connected depot2-2-2 depot2-1-2)
	(connected depot2-2-2 depot2-2-1)
	(connected depot3-1-1 depot3-2-1)
	(connected depot3-1-1 depot3-1-2)
	(connected depot3-1-2 depot3-2-2)
	(connected depot3-1-2 depot3-1-3)
	(connected depot3-1-2 depot3-1-1)
	(connected depot3-1-3 depot3-1-2)
	(connected depot3-2-1 depot3-1-1)
	(connected depot3-2-1 depot3-2-2)
	(connected depot3-2-2 depot3-1-2)
	(connected depot3-2-2 depot3-2-1)
	(connected depot4-1-1 depot4-2-1)
	(connected depot4-1-1 depot4-1-2)
	(connected depot4-1-2 depot4-1-3)
	(connected depot4-1-2 depot4-1-1)
	(connected depot4-1-3 depot4-2-3)
	(connected depot4-1-3 depot4-1-2)
	(connected depot4-2-1 depot4-1-1)
	(connected depot4-2-3 depot4-1-3)
	(connected depot5-1-1 depot5-2-1)
	(connected depot5-1-1 depot5-1-2)
	(connected depot5-1-2 depot5-2-2)
	(connected depot5-1-2 depot5-1-3)
	(connected depot5-1-2 depot5-1-1)
	(connected depot5-1-3 depot5-1-2)
	(connected depot5-2-1 depot5-1-1)
	(connected depot5-2-1 depot5-2-2)
	(connected depot5-2-2 depot5-1-2)
	(connected depot5-2-2 depot5-2-1)
	(connected transit0 depot0-1-3)
	(connected transit0 depot1-1-1)
	(in depot0-1-1 depot0)
	(in depot0-1-2 depot0)
	(in depot0-1-3 depot0)
	(in depot0-2-1 depot0)
	(in depot0-2-2 depot0)
	(in depot1-1-1 depot1)
	(in depot1-1-2 depot1)
	(in depot1-1-3 depot1)
	(in depot1-2-1 depot1)
	(in depot1-2-2 depot1)
	(in depot2-1-1 depot2)
	(in depot2-1-2 depot2)
	(in depot2-2-1 depot2)
	(in depot2-2-2 depot2)
	(in depot3-1-1 depot3)
	(in depot3-1-2 depot3)
	(in depot3-1-3 depot3)
	(in depot3-2-1 depot3)
	(in depot3-2-2 depot3)
	(in depot4-1-1 depot4)
	(in depot4-1-2 depot4)
	(in depot4-1-3 depot4)
	(in depot4-2-1 depot4)
	(in depot4-2-3 depot4)
	(in depot5-1-1 depot5)
	(in depot5-1-2 depot5)
	(in depot5-1-3 depot5)
	(in depot5-2-1 depot5)
	(in depot5-2-2 depot5)
	(on crate0 container-0-0)
	(on crate1 container-0-1)
	(on crate2 container-0-2)
	(on crate3 container-0-3)
	(on crate4 container-1-0)
	(on crate5 container-1-1)
	(on crate6 container-1-2)
	(on crate7 container-1-3)
	(on crate8 container-2-0)
	(on crate9 container-2-1)
	(in crate0 container0)
	(in crate1 container0)
	(in crate2 container0)
	(in crate3 container0)
	(in crate4 container1)
	(in crate5 container1)
	(in crate6 container1)
	(in crate7 container1)
	(in crate8 container2)
	(in crate9 container2)
	(in container-0-0 container0)
	(in container-0-1 container0)
	(in container-0-2 container0)
	(in container-0-3 container0)
	(in container-1-0 container1)
	(in container-1-1 container1)
	(in container-1-2 container1)
	(in container-1-3 container1)
	(in container-2-0 container2)
	(in container-2-1 container2)
	(connected loadarea container-0-0) 
	(connected container-0-0 loadarea)
	(connected loadarea container-0-1) 
	(connected container-0-1 loadarea)
	(connected loadarea container-0-2) 
	(connected container-0-2 loadarea)
	(connected loadarea container-0-3) 
	(connected container-0-3 loadarea)
	(connected loadarea container-1-0) 
	(connected container-1-0 loadarea)
	(connected loadarea container-1-1) 
	(connected container-1-1 loadarea)
	(connected loadarea container-1-2) 
	(connected container-1-2 loadarea)
	(connected loadarea container-1-3) 
	(connected container-1-3 loadarea)
	(connected loadarea container-2-0) 
	(connected container-2-0 loadarea)
	(connected loadarea container-2-1) 
	(connected container-2-1 loadarea)  
	(connected depot0-2-1 loadarea)
	(connected loadarea depot0-2-1)
	(connected depot1-2-1 loadarea)
	(connected loadarea depot1-2-1)
	(connected depot2-2-2 loadarea)
	(connected loadarea depot2-2-2)
	(connected depot3-2-1 loadarea)
	(connected loadarea depot3-2-1)
	(connected depot4-2-3 loadarea)
	(connected loadarea depot4-2-3)
	(connected depot5-2-2 loadarea)
	(connected loadarea depot5-2-2)  
	(clear depot0-1-1)
	(clear depot0-1-2)
	(clear depot0-1-3)
	(clear depot0-2-1)
	(clear depot0-2-2)
	(clear depot1-1-1)
	(clear depot1-1-2)
	(clear depot1-1-3)
	(clear depot1-2-2)
	(clear depot2-2-2)
	(clear depot2-2-1)
	(clear depot3-1-1)
	(clear depot3-1-2)
	(clear depot3-1-3)
	(clear depot3-2-1)
	(clear depot3-2-2)
	(clear depot4-1-1)
	(clear depot4-1-2)
	(clear depot4-1-3)
	(clear depot4-2-1)
	(clear depot4-2-3)
	(clear depot5-1-1)
	(clear depot5-1-2)
	(clear depot5-1-3)
	(clear depot5-2-1)
	(clear depot5-2-2)  
	(at hoist0 depot1-2-1)
	(available hoist0)
	(at hoist1 depot2-1-1)
	(available hoist1)
	(at hoist2 depot2-1-2)
	(available hoist2)
	(compatible crate0 crate1)
	(compatible crate1 crate0)
	(compatible crate0 crate2)
	(compatible crate2 crate0)
	(compatible crate0 crate3)
	(compatible crate3 crate0)
	(compatible crate1 crate2)
	(compatible crate2 crate1)
	(compatible crate1 crate3)
	(compatible crate3 crate1)
	(compatible crate2 crate3)
	(compatible crate3 crate2)
	(compatible crate4 crate5)
	(compatible crate5 crate4)
	(compatible crate4 crate6)
	(compatible crate6 crate4)
	(compatible crate5 crate6)
	(compatible crate6 crate5)
	(compatible crate7 crate8)
	(compatible crate8 crate7)
	(compatible crate7 crate9)
	(compatible crate9 crate7)
	(compatible crate8 crate9)
	(compatible crate9 crate8))

(:goal (and
	(preference p4A (clear depot0-2-1))
	(preference p2A (clear depot0-1-1))
	(preference p2B (clear depot0-2-2))
	(preference p1A (clear depot0-1-2))
	(preference p4B (clear depot1-2-1))
	(preference p2C (clear depot1-1-1))
	(preference p2D (clear depot1-2-2))
	(preference p1B (clear depot1-1-2))
	(preference p3A (clear depot2-2-2))
	(preference p1C (clear depot2-1-2))
	(preference p1D (clear depot2-2-1))
	(preference p4C (clear depot3-2-1))
	(preference p2E (clear depot3-1-1))
	(preference p2F (clear depot3-2-2))
	(preference p1E (clear depot3-1-2))
	(preference p5A (clear depot4-2-3))
	(preference p3B (clear depot4-1-3))
	(preference p2G (clear depot4-1-2))
	(preference p1F (clear depot4-1-1))
	(preference p3C (clear depot5-2-2))
	(preference p1G (clear depot5-1-2))
	(preference p1H (clear depot5-2-1))

	(forall (?c - crate)
	   (preference p9A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot1))))))
	(forall (?c - crate)
	   (preference p14A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot2))))))
	(forall (?c - crate)
	   (preference p18A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot3))))))
	(forall (?c - crate)
	   (preference p23A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot4))))))
	(forall (?c - crate)
	   (preference p29A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot5))))))))

(:constraints (and
	(forall (?c1 ?c2 - crate ?s1 ?s2 - storearea)
	   (preference p15A (always (imply (and (on ?c1 ?s1) (on ?c2 ?s2)
					        (not (= ?c1 ?c2)) (connected ?s1 ?s2))
					   (compatible ?c1 ?c2)))))

	(forall (?c1 ?c2 - crate ?d - depot)
	   (preference p7A (always (imply (and (in ?c1 ?d) (in ?c2 ?d) (not (= ?c1 ?c2)))
					  (compatible ?c1 ?c2)))))

	(forall (?c - crate)
	   (preference p7B (at-most-once (exists (?h - hoist) (lifting ?h ?c)))))

	(forall (?h - hoist)
	   (preference p8A (sometime (exists (?c - crate) (lifting ?h ?c)))))

	(preference p6A (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate3 ?d2))))
	(preference p6B (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate4 ?d2))))
	(preference p6C (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate5 ?d2))))
	(preference p6D (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate6 ?d2))))
	(preference p6E (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate7 ?d2))))
	(preference p6F (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate8 ?d2))))
	(preference p6G (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate9 ?d2))))
	(preference p6H (sometime-before (exists (?d1 - depot) (in crate1 ?d1))
					 (exists (?d2 - depot) (in crate3 ?d2))))
	(preference p6I (sometime-before (exists (?d1 - depot) (in crate1 ?d1))
					 (exists (?d2 - depot) (in crate4 ?d2))))
	(preference p6J (sometime-before (exists (?d1 - depot) (in crate1 ?d1))
					 (exists (?d2 - depot) (in crate5 ?d2))))
	(preference p6K (sometime-before (exists (?d1 - depot) (in crate1 ?d1))
					 (exists (?d2 - depot) (in crate6 ?d2))))
	(preference p6L (sometime-before (exists (?d1 - depot) (in crate1 ?d1))
					 (exists (?d2 - depot) (in crate7 ?d2))))
	(preference p6M (sometime-before (exists (?d1 - depot) (in crate1 ?d1))
					 (exists (?d2 - depot) (in crate8 ?d2))))
	(preference p6N (sometime-before (exists (?d1 - depot) (in crate1 ?d1))
					 (exists (?d2 - depot) (in crate9 ?d2))))
	(preference p6O (sometime-before (exists (?d1 - depot) (in crate2 ?d1))
					 (exists (?d2 - depot) (in crate3 ?d2))))
	(preference p6P (sometime-before (exists (?d1 - depot) (in crate2 ?d1))
					 (exists (?d2 - depot) (in crate4 ?d2))))
	(preference p6Q (sometime-before (exists (?d1 - depot) (in crate2 ?d1))
					 (exists (?d2 - depot) (in crate5 ?d2))))
	(preference p6R (sometime-before (exists (?d1 - depot) (in crate2 ?d1))
					 (exists (?d2 - depot) (in crate6 ?d2))))
	(preference p6S (sometime-before (exists (?d1 - depot) (in crate2 ?d1))
					 (exists (?d2 - depot) (in crate7 ?d2))))
	(preference p6T (sometime-before (exists (?d1 - depot) (in crate2 ?d1))
					 (exists (?d2 - depot) (in crate8 ?d2))))
	(preference p6U (sometime-before (exists (?d1 - depot) (in crate2 ?d1))
					 (exists (?d2 - depot) (in crate9 ?d2))))

	(forall (?c - crate)
	   (preference p8B (within 74 (exists (?d - depot) (in ?c ?d)))))

	(forall (?h - hoist)
	   (preference p7C (always-within 3.5 (at ?h loadarea)
				 (exists (?a - storearea ?d - depot) (and (at ?h ?a) (in ?a ?d))))))))

(:metric minimize (+ (* 1 (is-violated p1A))
		     (* 1 (is-violated p1B))
		     (* 1 (is-violated p1C))
		     (* 1 (is-violated p1D))
		     (* 1 (is-violated p1E))
		     (* 1 (is-violated p1F))
		     (* 1 (is-violated p1G))
		     (* 1 (is-violated p1H))
		     (* 2 (is-violated p2A))
		     (* 2 (is-violated p2B))
		     (* 2 (is-violated p2C))
		     (* 2 (is-violated p2D))
		     (* 2 (is-violated p2E))
		     (* 2 (is-violated p2F))
		     (* 2 (is-violated p2G))
		     (* 3 (is-violated p3A))
		     (* 3 (is-violated p3B))
		     (* 3 (is-violated p3C))
		     (* 4 (is-violated p4A))
		     (* 4 (is-violated p4B))
		     (* 4 (is-violated p4C))
		     (* 5 (is-violated p5A))
		     (* 6 (is-violated p6A))
		     (* 6 (is-violated p6B))
		     (* 6 (is-violated p6C))
		     (* 6 (is-violated p6D))
		     (* 6 (is-violated p6E))
		     (* 6 (is-violated p6F))
		     (* 6 (is-violated p6G))
		     (* 6 (is-violated p6H))
		     (* 6 (is-violated p6I))
		     (* 6 (is-violated p6J))
		     (* 6 (is-violated p6K))
		     (* 6 (is-violated p6L))
		     (* 6 (is-violated p6M))
		     (* 6 (is-violated p6N))
		     (* 6 (is-violated p6O))
		     (* 6 (is-violated p6P))
		     (* 6 (is-violated p6Q))
		     (* 6 (is-violated p6R))
		     (* 6 (is-violated p6S))
		     (* 6 (is-violated p6T))
		     (* 6 (is-violated p6U))
		     (* 7 (is-violated p7A))
		     (* 7 (is-violated p7B))
		     (* 7 (is-violated p7C))
		     (* 8 (is-violated p8A))
		     (* 8 (is-violated p8B))
		     (* 9 (is-violated p9A))
		     (* 14 (is-violated p14A))
		     (* 15 (is-violated p15A))
		     (* 18 (is-violated p18A))
		     (* 23 (is-violated p23A))
		     (* 29 (is-violated p29A))))
)
