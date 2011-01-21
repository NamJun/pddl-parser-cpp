; Map of the Depots:                                                                   
; 00=111 222 333 44 555 666=777=88 999=AAAA                        
; *0 *1  *2  3*  *4 5*  6 * 7 * 8* 9 * AA *                        
;------------------------------------------                        
; 0: depot0 area
; 1: depot1 area
; 2: depot2 area
; 3: depot3 area
; 4: depot4 area
; 5: depot5 area
; 6: depot6 area
; 7: depot7 area
; 8: depot8 area
; 9: depot9 area
; A: depotA area
; *: Depot access point
; =: Transit area

(define (problem storage-19)
(:domain Storage-PropositionalSimplePreferences)
(:objects
	depot0-1-1 depot0-1-2 depot0-2-1 depot0-2-2 depot1-1-1 depot1-1-2 depot1-1-3 depot1-2-1 depot1-2-2 depot2-1-1 depot2-1-2 depot2-1-3 depot2-2-1 depot2-2-2 depot3-1-1 depot3-1-2 depot3-1-3 depot3-2-1 depot3-2-2 depot4-1-1 depot4-1-2 depot4-2-1 depot4-2-2 depot5-1-1 depot5-1-2 depot5-1-3 depot5-2-1 depot5-2-2 depot6-1-1 depot6-1-2 depot6-1-3 depot6-2-1 depot6-2-3 depot7-1-1 depot7-1-2 depot7-1-3 depot7-2-1 depot7-2-3 depot8-1-1 depot8-1-2 depot8-2-1 depot8-2-2 depot9-1-1 depot9-1-2 depot9-1-3 depot9-2-1 depot9-2-3 depotA-1-1 depotA-1-2 depotA-1-3 depotA-1-4 depotA-2-1 depotA-2-2 depotA-2-4 container-0-0 container-0-1 container-0-2 container-0-3 container-1-0 container-1-1 container-1-2 container-1-3 container-2-0 container-2-1 container-2-2 container-2-3 container-3-0 container-3-1 container-3-2 container-3-3 container-4-0 container-4-1 container-4-2 - storearea
	hoist0 hoist1 hoist2 hoist3 hoist4 - hoist
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 crate15 crate16 crate17 crate18 - crate
	container0 container1 container2 container3 container4 - container
	depot0 depot1 depot2 depot3 depot4 depot5 depot6 depot7 depot8 depot9 depotA - depot
	loadarea transit0 transit1 transit2 transit3 - transitarea)

(:init
	(connected depot0-1-1 depot0-2-1)
	(connected depot0-1-1 depot0-1-2)
	(connected depot0-1-2 depot0-2-2)
	(connected depot0-1-2 depot0-1-1)
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
	(connected depot2-1-2 depot2-1-3)
	(connected depot2-1-2 depot2-1-1)
	(connected depot2-1-3 depot2-1-2)
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
	(connected depot4-1-2 depot4-2-2)
	(connected depot4-1-2 depot4-1-1)
	(connected depot4-2-1 depot4-1-1)
	(connected depot4-2-1 depot4-2-2)
	(connected depot4-2-2 depot4-1-2)
	(connected depot4-2-2 depot4-2-1)
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
	(connected depot6-1-1 depot6-2-1)
	(connected depot6-1-1 depot6-1-2)
	(connected depot6-1-2 depot6-1-3)
	(connected depot6-1-2 depot6-1-1)
	(connected depot6-1-3 depot6-2-3)
	(connected depot6-1-3 depot6-1-2)
	(connected depot6-2-1 depot6-1-1)
	(connected depot6-2-3 depot6-1-3)
	(connected depot7-1-1 depot7-2-1)
	(connected depot7-1-1 depot7-1-2)
	(connected depot7-1-2 depot7-1-3)
	(connected depot7-1-2 depot7-1-1)
	(connected depot7-1-3 depot7-2-3)
	(connected depot7-1-3 depot7-1-2)
	(connected depot7-2-1 depot7-1-1)
	(connected depot7-2-3 depot7-1-3)
	(connected depot8-1-1 depot8-2-1)
	(connected depot8-1-1 depot8-1-2)
	(connected depot8-1-2 depot8-2-2)
	(connected depot8-1-2 depot8-1-1)
	(connected depot8-2-1 depot8-1-1)
	(connected depot8-2-1 depot8-2-2)
	(connected depot8-2-2 depot8-1-2)
	(connected depot8-2-2 depot8-2-1)
	(connected depot9-1-1 depot9-2-1)
	(connected depot9-1-1 depot9-1-2)
	(connected depot9-1-2 depot9-1-3)
	(connected depot9-1-2 depot9-1-1)
	(connected depot9-1-3 depot9-2-3)
	(connected depot9-1-3 depot9-1-2)
	(connected depot9-2-1 depot9-1-1)
	(connected depot9-2-3 depot9-1-3)
	(connected depotA-1-1 depotA-2-1)
	(connected depotA-1-1 depotA-1-2)
	(connected depotA-1-2 depotA-2-2)
	(connected depotA-1-2 depotA-1-3)
	(connected depotA-1-2 depotA-1-1)
	(connected depotA-1-3 depotA-1-4)
	(connected depotA-1-3 depotA-1-2)
	(connected depotA-1-4 depotA-2-4)
	(connected depotA-1-4 depotA-1-3)
	(connected depotA-2-1 depotA-1-1)
	(connected depotA-2-1 depotA-2-2)
	(connected depotA-2-2 depotA-1-2)
	(connected depotA-2-2 depotA-2-1)
	(connected depotA-2-4 depotA-1-4)
	(connected transit0 depot0-1-2)
	(connected transit0 depot1-1-1)
	(connected transit1 depot6-1-3)
	(connected transit1 depot7-1-1)
	(connected transit2 depot7-1-3)
	(connected transit2 depot8-1-1)
	(connected transit3 depot9-1-3)
	(connected transit3 depotA-1-1)
	(in depot0-1-1 depot0)
	(in depot0-1-2 depot0)
	(in depot0-2-1 depot0)
	(in depot0-2-2 depot0)
	(in depot1-1-1 depot1)
	(in depot1-1-2 depot1)
	(in depot1-1-3 depot1)
	(in depot1-2-1 depot1)
	(in depot1-2-2 depot1)
	(in depot2-1-1 depot2)
	(in depot2-1-2 depot2)
	(in depot2-1-3 depot2)
	(in depot2-2-1 depot2)
	(in depot2-2-2 depot2)
	(in depot3-1-1 depot3)
	(in depot3-1-2 depot3)
	(in depot3-1-3 depot3)
	(in depot3-2-1 depot3)
	(in depot3-2-2 depot3)
	(in depot4-1-1 depot4)
	(in depot4-1-2 depot4)
	(in depot4-2-1 depot4)
	(in depot4-2-2 depot4)
	(in depot5-1-1 depot5)
	(in depot5-1-2 depot5)
	(in depot5-1-3 depot5)
	(in depot5-2-1 depot5)
	(in depot5-2-2 depot5)
	(in depot6-1-1 depot6)
	(in depot6-1-2 depot6)
	(in depot6-1-3 depot6)
	(in depot6-2-1 depot6)
	(in depot6-2-3 depot6)
	(in depot7-1-1 depot7)
	(in depot7-1-2 depot7)
	(in depot7-1-3 depot7)
	(in depot7-2-1 depot7)
	(in depot7-2-3 depot7)
	(in depot8-1-1 depot8)
	(in depot8-1-2 depot8)
	(in depot8-2-1 depot8)
	(in depot8-2-2 depot8)
	(in depot9-1-1 depot9)
	(in depot9-1-2 depot9)
	(in depot9-1-3 depot9)
	(in depot9-2-1 depot9)
	(in depot9-2-3 depot9)
	(in depotA-1-1 depotA)
	(in depotA-1-2 depotA)
	(in depotA-1-3 depotA)
	(in depotA-1-4 depotA)
	(in depotA-2-1 depotA)
	(in depotA-2-2 depotA)
	(in depotA-2-4 depotA)
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
	(on crate10 container-2-2)
	(on crate11 container-2-3)
	(on crate12 container-3-0)
	(on crate13 container-3-1)
	(on crate14 container-3-2)
	(on crate15 container-3-3)
	(on crate16 container-4-0)
	(on crate17 container-4-1)
	(on crate18 container-4-2)
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
	(in crate10 container2)
	(in crate11 container2)
	(in crate12 container3)
	(in crate13 container3)
	(in crate14 container3)
	(in crate15 container3)
	(in crate16 container4)
	(in crate17 container4)
	(in crate18 container4)
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
	(in container-2-2 container2)
	(in container-2-3 container2)
	(in container-3-0 container3)
	(in container-3-1 container3)
	(in container-3-2 container3)
	(in container-3-3 container3)
	(in container-4-0 container4)
	(in container-4-1 container4)
	(in container-4-2 container4)
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
	(connected loadarea container-2-2) 
	(connected container-2-2 loadarea)
	(connected loadarea container-2-3) 
	(connected container-2-3 loadarea)
	(connected loadarea container-3-0) 
	(connected container-3-0 loadarea)
	(connected loadarea container-3-1) 
	(connected container-3-1 loadarea)
	(connected loadarea container-3-2) 
	(connected container-3-2 loadarea)
	(connected loadarea container-3-3) 
	(connected container-3-3 loadarea)
	(connected loadarea container-4-0) 
	(connected container-4-0 loadarea)
	(connected loadarea container-4-1) 
	(connected container-4-1 loadarea)
	(connected loadarea container-4-2) 
	(connected container-4-2 loadarea)  
	(connected depot0-2-1 loadarea)
	(connected loadarea depot0-2-1)
	(connected depot1-2-1 loadarea)
	(connected loadarea depot1-2-1)
	(connected depot2-2-1 loadarea)
	(connected loadarea depot2-2-1)
	(connected depot3-2-2 loadarea)
	(connected loadarea depot3-2-2)
	(connected depot4-2-1 loadarea)
	(connected loadarea depot4-2-1)
	(connected depot5-2-2 loadarea)
	(connected loadarea depot5-2-2)
	(connected depot6-2-3 loadarea)
	(connected loadarea depot6-2-3)
	(connected depot7-2-3 loadarea)
	(connected loadarea depot7-2-3)
	(connected depot8-2-2 loadarea)
	(connected loadarea depot8-2-2)
	(connected depot9-2-3 loadarea)
	(connected loadarea depot9-2-3)
	(connected depotA-2-4 loadarea)
	(connected loadarea depotA-2-4)  
	(clear depot0-1-1)
	(clear depot0-1-2)
	(clear depot0-2-1)
	(clear depot1-1-1)
	(clear depot1-1-2)
	(clear depot1-1-3)
	(clear depot1-2-2)
	(clear depot2-1-1)
	(clear depot2-1-2)
	(clear depot2-1-3)
	(clear depot2-2-1)
	(clear depot2-2-2)
	(clear depot3-1-1)
	(clear depot3-1-2)
	(clear depot3-1-3)
	(clear depot3-2-1)
	(clear depot3-2-2)
	(clear depot4-1-1)
	(clear depot4-2-2)
	(clear depot4-2-1)
	(clear depot5-1-1)
	(clear depot5-1-2)
	(clear depot5-1-3)
	(clear depot5-2-1)
	(clear depot5-2-2)
	(clear depot6-1-1)
	(clear depot6-1-2)
	(clear depot6-1-3)
	(clear depot6-2-1)
	(clear depot6-2-3)
	(clear depot7-1-1)
	(clear depot7-1-2)
	(clear depot7-1-3)
	(clear depot7-2-1)
	(clear depot7-2-3)
	(clear depot8-1-1)
	(clear depot8-1-2)
	(clear depot8-2-1)
	(clear depot8-2-2)
	(clear depot9-1-1)
	(clear depot9-1-2)
	(clear depot9-1-3)
	(clear depot9-2-1)
	(clear depot9-2-3)
	(clear depotA-2-2)
	(clear depotA-1-2)
	(clear depotA-1-3)
	(clear depotA-1-4)
	(clear depotA-2-4)  
	(at hoist0 depot0-2-2)
	(available hoist0)
	(at hoist1 depot1-2-1)
	(available hoist1)
	(at hoist2 depot4-1-2)
	(available hoist2)
	(at hoist3 depotA-2-1)
	(available hoist3)
	(at hoist4 depotA-1-1)
	(available hoist4)
	(compatible crate0 crate1)
	(compatible crate1 crate0)
	(compatible crate0 crate2)
	(compatible crate2 crate0)
	(compatible crate0 crate3)
	(compatible crate3 crate0)
	(compatible crate0 crate4)
	(compatible crate4 crate0)
	(compatible crate1 crate2)
	(compatible crate2 crate1)
	(compatible crate1 crate3)
	(compatible crate3 crate1)
	(compatible crate1 crate4)
	(compatible crate4 crate1)
	(compatible crate2 crate3)
	(compatible crate3 crate2)
	(compatible crate2 crate4)
	(compatible crate4 crate2)
	(compatible crate3 crate4)
	(compatible crate4 crate3)
	(compatible crate5 crate6)
	(compatible crate6 crate5)
	(compatible crate5 crate7)
	(compatible crate7 crate5)
	(compatible crate5 crate8)
	(compatible crate8 crate5)
	(compatible crate5 crate9)
	(compatible crate9 crate5)
	(compatible crate6 crate7)
	(compatible crate7 crate6)
	(compatible crate6 crate8)
	(compatible crate8 crate6)
	(compatible crate6 crate9)
	(compatible crate9 crate6)
	(compatible crate7 crate8)
	(compatible crate8 crate7)
	(compatible crate7 crate9)
	(compatible crate9 crate7)
	(compatible crate8 crate9)
	(compatible crate9 crate8)
	(compatible crate10 crate11)
	(compatible crate11 crate10)
	(compatible crate10 crate12)
	(compatible crate12 crate10)
	(compatible crate10 crate13)
	(compatible crate13 crate10)
	(compatible crate10 crate14)
	(compatible crate14 crate10)
	(compatible crate11 crate12)
	(compatible crate12 crate11)
	(compatible crate11 crate13)
	(compatible crate13 crate11)
	(compatible crate11 crate14)
	(compatible crate14 crate11)
	(compatible crate12 crate13)
	(compatible crate13 crate12)
	(compatible crate12 crate14)
	(compatible crate14 crate12)
	(compatible crate13 crate14)
	(compatible crate14 crate13)
	(compatible crate15 crate16)
	(compatible crate16 crate15)
	(compatible crate15 crate17)
	(compatible crate17 crate15)
	(compatible crate15 crate18)
	(compatible crate18 crate15)
	(compatible crate16 crate17)
	(compatible crate17 crate16)
	(compatible crate16 crate18)
	(compatible crate18 crate16)
	(compatible crate17 crate18)
	(compatible crate18 crate17))

(:goal (and
	(preference p3A (clear depot0-2-1))
	(preference p1A (clear depot0-1-1))
	(preference p1B (clear depot0-2-2))
	(preference p4A (clear depot1-2-1))
	(preference p2A (clear depot1-1-1))
	(preference p2B (clear depot1-2-2))
	(preference p1C (clear depot1-1-2))
	(preference p4B (clear depot2-2-1))
	(preference p2C (clear depot2-1-1))
	(preference p2D (clear depot2-2-2))
	(preference p1D (clear depot2-1-2))
	(preference p3B (clear depot3-2-2))
	(preference p1E (clear depot3-1-2))
	(preference p1F (clear depot3-2-1))
	(preference p3C (clear depot4-2-1))
	(preference p1G (clear depot4-1-1))
	(preference p1H (clear depot4-2-2))
	(preference p3D (clear depot5-2-2))
	(preference p1I (clear depot5-1-2))
	(preference p1J (clear depot5-2-1))
	(preference p5A (clear depot6-2-3))
	(preference p3E (clear depot6-1-3))
	(preference p2E (clear depot6-1-2))
	(preference p1K (clear depot6-1-1))
	(preference p5B (clear depot7-2-3))
	(preference p3F (clear depot7-1-3))
	(preference p2F (clear depot7-1-2))
	(preference p1L (clear depot7-1-1))
	(preference p3G (clear depot8-2-2))
	(preference p1M (clear depot8-1-2))
	(preference p1N (clear depot8-2-1))
	(preference p5C (clear depot9-2-3))
	(preference p3H (clear depot9-1-3))
	(preference p2G (clear depot9-1-2))
	(preference p1O (clear depot9-1-1))
	(preference p6A (clear depotA-2-4))
	(preference p4C (clear depotA-1-4))
	(preference p3I (clear depotA-1-3))
	(preference p2H (clear depotA-1-2))
	(preference p1P (clear depotA-1-1))
	(preference p1Q (clear depotA-2-2))

	(forall (?c - crate)
	   (preference p7A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot1))))))
	(forall (?c - crate)
	   (preference p12A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot2))))))
	(forall (?c - crate)
	   (preference p17A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot3))))))
	(forall (?c - crate)
	   (preference p21A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot4))))))
	(forall (?c - crate)
	   (preference p25A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot5))))))
	(forall (?c - crate)
	   (preference p29A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot6))))))
	(forall (?c - crate)
	   (preference p35A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot7))))))
	(forall (?c - crate)
	   (preference p41A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot8))))))
	(forall (?c - crate)
	   (preference p45A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot9))))))
	(forall (?c - crate)
	   (preference p51A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depotA))))))

	(forall (?h - hoist)
	   (preference p7B (exists (?s - storearea ?d - depot)
			      (and (at ?h ?s) (in ?s ?d) (not (= ?d depot1))))))
	(forall (?h - hoist)
	   (preference p12B (exists (?s - storearea ?d - depot)
			      (and (at ?h ?s) (in ?s ?d) (not (= ?d depot2))))))
	(forall (?h - hoist)
	   (preference p17B (exists (?s - storearea ?d - depot)
			      (and (at ?h ?s) (in ?s ?d) (not (= ?d depot3))))))
	(forall (?h - hoist)
	   (preference p21B (exists (?s - storearea ?d - depot)
			      (and (at ?h ?s) (in ?s ?d) (not (= ?d depot4))))))
	(forall (?h - hoist)
	   (preference p25B (exists (?s - storearea ?d - depot)
			      (and (at ?h ?s) (in ?s ?d) (not (= ?d depot5))))))
	(forall (?h - hoist)
	   (preference p29B (exists (?s - storearea ?d - depot)
			      (and (at ?h ?s) (in ?s ?d) (not (= ?d depot6))))))
	(forall (?h - hoist)
	   (preference p35B (exists (?s - storearea ?d - depot)
			      (and (at ?h ?s) (in ?s ?d) (not (= ?d depot7))))))
	(forall (?h - hoist)
	   (preference p41B (exists (?s - storearea ?d - depot)
			      (and (at ?h ?s) (in ?s ?d) (not (= ?d depot8))))))
	(forall (?h - hoist)
	   (preference p45B (exists (?s - storearea ?d - depot)
			      (and (at ?h ?s) (in ?s ?d) (not (= ?d depot9))))))
	(forall (?h - hoist)
	   (preference p51B (exists (?s - storearea ?d - depot)
			      (and (at ?h ?s) (in ?s ?d) (not (= ?d depotA))))))

	(forall (?c1 ?c2 - crate ?d - depot)
	   (preference p13A (imply (and (in ?c1 ?d) (in ?c2 ?d) (not (= ?c1 ?c2)))
			          (compatible ?c1 ?c2))))

	(forall (?c1 ?c2 - crate ?s1 ?s2 - storearea)
	   (preference p26A (imply (and (on ?c1 ?s1) (on ?c2 ?s2)
			               (not (= ?c1 ?c2)) (connected ?s1 ?s2))
			          (compatible ?c1 ?c2))))

	(forall (?d - depot ?s - storearea ?h - hoist)
	   (preference p52A (imply (and (at ?h ?s) (in ?s ?d))
				  (forall (?c - crate) (not (in ?c ?d))))))))

(:metric minimize (+ (* 1 (is-violated p1A))
		     (* 1 (is-violated p1B))
		     (* 1 (is-violated p1C))
		     (* 1 (is-violated p1D))
		     (* 1 (is-violated p1E))
		     (* 1 (is-violated p1F))
		     (* 1 (is-violated p1G))
		     (* 1 (is-violated p1H))
		     (* 1 (is-violated p1I))
		     (* 1 (is-violated p1J))
		     (* 1 (is-violated p1K))
		     (* 1 (is-violated p1L))
		     (* 1 (is-violated p1M))
		     (* 1 (is-violated p1N))
		     (* 1 (is-violated p1O))
		     (* 1 (is-violated p1P))
		     (* 1 (is-violated p1Q))
		     (* 2 (is-violated p2A))
		     (* 2 (is-violated p2B))
		     (* 2 (is-violated p2C))
		     (* 2 (is-violated p2D))
		     (* 2 (is-violated p2E))
		     (* 2 (is-violated p2F))
		     (* 2 (is-violated p2G))
		     (* 2 (is-violated p2H))
		     (* 3 (is-violated p3A))
		     (* 3 (is-violated p3B))
		     (* 3 (is-violated p3C))
		     (* 3 (is-violated p3D))
		     (* 3 (is-violated p3E))
		     (* 3 (is-violated p3F))
		     (* 3 (is-violated p3G))
		     (* 3 (is-violated p3H))
		     (* 3 (is-violated p3I))
		     (* 4 (is-violated p4A))
		     (* 4 (is-violated p4B))
		     (* 4 (is-violated p4C))
		     (* 5 (is-violated p5A))
		     (* 5 (is-violated p5B))
		     (* 5 (is-violated p5C))
		     (* 6 (is-violated p6A))
		     (* 7 (is-violated p7A))
		     (* 7 (is-violated p7B))
		     (* 12 (is-violated p12A))
		     (* 12 (is-violated p12B))
		     (* 13 (is-violated p13A))
		     (* 17 (is-violated p17A))
		     (* 17 (is-violated p17B))
		     (* 21 (is-violated p21A))
		     (* 21 (is-violated p21B))
		     (* 25 (is-violated p25A))
		     (* 25 (is-violated p25B))
		     (* 26 (is-violated p26A))
		     (* 29 (is-violated p29A))
		     (* 29 (is-violated p29B))
		     (* 35 (is-violated p35A))
		     (* 35 (is-violated p35B))
		     (* 41 (is-violated p41A))
		     (* 41 (is-violated p41B))
		     (* 45 (is-violated p45A))
		     (* 45 (is-violated p45B))
		     (* 51 (is-violated p51A))
		     (* 51 (is-violated p51B))
		     (* 52 (is-violated p52A))))
)