(define (problem pfile19)
(:domain TPP-MetricTimePreferences)
(:objects
	market1 market2 market3 market4 market5 - market
	depot1 depot2 - depot
	truck1 truck2 truck3 - truck
	goods1 goods2 goods3 goods4 goods5 goods6 goods7 goods8 goods9 goods10 goods11 goods12 goods13 goods14 goods15 goods16 goods17 goods18 goods19 goods20 goods21 - goods)

(:init
	(= (price goods1 market1) 49)
	(= (ready-to-load goods1 market1) 0)
	(= (on-sale goods1 market1) 17)
	(= (ready-to-load goods1 market2) 0)
	(= (on-sale goods1 market2) 0)
	(= (ready-to-load goods1 market3) 0)
	(= (on-sale goods1 market3) 0)
	(= (price goods1 market4) 15)
	(= (ready-to-load goods1 market4) 0)
	(= (on-sale goods1 market4) 16)
	(= (price goods1 market5) 7)
	(= (ready-to-load goods1 market5) 0)
	(= (on-sale goods1 market5) 10)
	(= (ready-to-load goods1 depot1) 0)
	(= (ready-to-load goods1 depot2) 0)
	(= (price goods2 market1) 24)
	(= (ready-to-load goods2 market1) 0)
	(= (on-sale goods2 market1) 4)
	(= (ready-to-load goods2 market2) 0)
	(= (on-sale goods2 market2) 0)
	(= (price goods2 market3) 14)
	(= (ready-to-load goods2 market3) 0)
	(= (on-sale goods2 market3) 4)
	(= (ready-to-load goods2 market4) 0)
	(= (on-sale goods2 market4) 0)
	(= (price goods2 market5) 18)
	(= (ready-to-load goods2 market5) 0)
	(= (on-sale goods2 market5) 17)
	(= (ready-to-load goods2 depot1) 0)
	(= (ready-to-load goods2 depot2) 0)
	(= (price goods3 market1) 17)
	(= (ready-to-load goods3 market1) 0)
	(= (on-sale goods3 market1) 3)
	(= (ready-to-load goods3 market2) 0)
	(= (on-sale goods3 market2) 0)
	(= (ready-to-load goods3 market3) 0)
	(= (on-sale goods3 market3) 0)
	(= (price goods3 market4) 9)
	(= (ready-to-load goods3 market4) 0)
	(= (on-sale goods3 market4) 20)
	(= (price goods3 market5) 15)
	(= (ready-to-load goods3 market5) 0)
	(= (on-sale goods3 market5) 18)
	(= (ready-to-load goods3 depot1) 0)
	(= (ready-to-load goods3 depot2) 0)
	(= (price goods4 market1) 11)
	(= (ready-to-load goods4 market1) 0)
	(= (on-sale goods4 market1) 15)
	(= (ready-to-load goods4 market2) 0)
	(= (on-sale goods4 market2) 0)
	(= (price goods4 market3) 12)
	(= (ready-to-load goods4 market3) 0)
	(= (on-sale goods4 market3) 5)
	(= (ready-to-load goods4 market4) 0)
	(= (on-sale goods4 market4) 0)
	(= (price goods4 market5) 47)
	(= (ready-to-load goods4 market5) 0)
	(= (on-sale goods4 market5) 3)
	(= (ready-to-load goods4 depot1) 0)
	(= (ready-to-load goods4 depot2) 0)
	(= (price goods5 market1) 24)
	(= (ready-to-load goods5 market1) 0)
	(= (on-sale goods5 market1) 11)
	(= (price goods5 market2) 32)
	(= (ready-to-load goods5 market2) 0)
	(= (on-sale goods5 market2) 16)
	(= (ready-to-load goods5 market3) 0)
	(= (on-sale goods5 market3) 0)
	(= (price goods5 market4) 36)
	(= (ready-to-load goods5 market4) 0)
	(= (on-sale goods5 market4) 1)
	(= (price goods5 market5) 36)
	(= (ready-to-load goods5 market5) 0)
	(= (on-sale goods5 market5) 8)
	(= (ready-to-load goods5 depot1) 0)
	(= (ready-to-load goods5 depot2) 0)
	(= (ready-to-load goods6 market1) 0)
	(= (on-sale goods6 market1) 0)
	(= (price goods6 market2) 8)
	(= (ready-to-load goods6 market2) 0)
	(= (on-sale goods6 market2) 5)
	(= (ready-to-load goods6 market3) 0)
	(= (on-sale goods6 market3) 0)
	(= (price goods6 market4) 1)
	(= (ready-to-load goods6 market4) 0)
	(= (on-sale goods6 market4) 2)
	(= (price goods6 market5) 13)
	(= (ready-to-load goods6 market5) 0)
	(= (on-sale goods6 market5) 12)
	(= (ready-to-load goods6 depot1) 0)
	(= (ready-to-load goods6 depot2) 0)
	(= (ready-to-load goods7 market1) 0)
	(= (on-sale goods7 market1) 0)
	(= (price goods7 market2) 3)
	(= (ready-to-load goods7 market2) 0)
	(= (on-sale goods7 market2) 16)
	(= (ready-to-load goods7 market3) 0)
	(= (on-sale goods7 market3) 0)
	(= (ready-to-load goods7 market4) 0)
	(= (on-sale goods7 market4) 0)
	(= (price goods7 market5) 40)
	(= (ready-to-load goods7 market5) 0)
	(= (on-sale goods7 market5) 7)
	(= (ready-to-load goods7 depot1) 0)
	(= (ready-to-load goods7 depot2) 0)
	(= (ready-to-load goods8 market1) 0)
	(= (on-sale goods8 market1) 0)
	(= (price goods8 market2) 8)
	(= (ready-to-load goods8 market2) 0)
	(= (on-sale goods8 market2) 7)
	(= (price goods8 market3) 10)
	(= (ready-to-load goods8 market3) 0)
	(= (on-sale goods8 market3) 18)
	(= (price goods8 market4) 27)
	(= (ready-to-load goods8 market4) 0)
	(= (on-sale goods8 market4) 15)
	(= (price goods8 market5) 12)
	(= (ready-to-load goods8 market5) 0)
	(= (on-sale goods8 market5) 4)
	(= (ready-to-load goods8 depot1) 0)
	(= (ready-to-load goods8 depot2) 0)
	(= (price goods9 market1) 3)
	(= (ready-to-load goods9 market1) 0)
	(= (on-sale goods9 market1) 11)
	(= (price goods9 market2) 6)
	(= (ready-to-load goods9 market2) 0)
	(= (on-sale goods9 market2) 4)
	(= (price goods9 market3) 18)
	(= (ready-to-load goods9 market3) 0)
	(= (on-sale goods9 market3) 15)
	(= (ready-to-load goods9 market4) 0)
	(= (on-sale goods9 market4) 0)
	(= (price goods9 market5) 30)
	(= (ready-to-load goods9 market5) 0)
	(= (on-sale goods9 market5) 4)
	(= (ready-to-load goods9 depot1) 0)
	(= (ready-to-load goods9 depot2) 0)
	(= (price goods10 market1) 30)
	(= (ready-to-load goods10 market1) 0)
	(= (on-sale goods10 market1) 13)
	(= (price goods10 market2) 5)
	(= (ready-to-load goods10 market2) 0)
	(= (on-sale goods10 market2) 5)
	(= (ready-to-load goods10 market3) 0)
	(= (on-sale goods10 market3) 0)
	(= (ready-to-load goods10 market4) 0)
	(= (on-sale goods10 market4) 0)
	(= (price goods10 market5) 31)
	(= (ready-to-load goods10 market5) 0)
	(= (on-sale goods10 market5) 1)
	(= (ready-to-load goods10 depot1) 0)
	(= (ready-to-load goods10 depot2) 0)
	(= (ready-to-load goods11 market1) 0)
	(= (on-sale goods11 market1) 0)
	(= (ready-to-load goods11 market2) 0)
	(= (on-sale goods11 market2) 0)
	(= (price goods11 market3) 24)
	(= (ready-to-load goods11 market3) 0)
	(= (on-sale goods11 market3) 10)
	(= (ready-to-load goods11 market4) 0)
	(= (on-sale goods11 market4) 0)
	(= (price goods11 market5) 33)
	(= (ready-to-load goods11 market5) 0)
	(= (on-sale goods11 market5) 13)
	(= (ready-to-load goods11 depot1) 0)
	(= (ready-to-load goods11 depot2) 0)
	(= (price goods12 market1) 27)
	(= (ready-to-load goods12 market1) 0)
	(= (on-sale goods12 market1) 17)
	(= (ready-to-load goods12 market2) 0)
	(= (on-sale goods12 market2) 0)
	(= (ready-to-load goods12 market3) 0)
	(= (on-sale goods12 market3) 0)
	(= (ready-to-load goods12 market4) 0)
	(= (on-sale goods12 market4) 0)
	(= (price goods12 market5) 35)
	(= (ready-to-load goods12 market5) 0)
	(= (on-sale goods12 market5) 18)
	(= (ready-to-load goods12 depot1) 0)
	(= (ready-to-load goods12 depot2) 0)
	(= (ready-to-load goods13 market1) 0)
	(= (on-sale goods13 market1) 0)
	(= (ready-to-load goods13 market2) 0)
	(= (on-sale goods13 market2) 0)
	(= (price goods13 market3) 8)
	(= (ready-to-load goods13 market3) 0)
	(= (on-sale goods13 market3) 20)
	(= (ready-to-load goods13 market4) 0)
	(= (on-sale goods13 market4) 0)
	(= (price goods13 market5) 6)
	(= (ready-to-load goods13 market5) 0)
	(= (on-sale goods13 market5) 5)
	(= (ready-to-load goods13 depot1) 0)
	(= (ready-to-load goods13 depot2) 0)
	(= (ready-to-load goods14 market1) 0)
	(= (on-sale goods14 market1) 0)
	(= (ready-to-load goods14 market2) 0)
	(= (on-sale goods14 market2) 0)
	(= (ready-to-load goods14 market3) 0)
	(= (on-sale goods14 market3) 0)
	(= (price goods14 market4) 36)
	(= (ready-to-load goods14 market4) 0)
	(= (on-sale goods14 market4) 1)
	(= (price goods14 market5) 9)
	(= (ready-to-load goods14 market5) 0)
	(= (on-sale goods14 market5) 11)
	(= (ready-to-load goods14 depot1) 0)
	(= (ready-to-load goods14 depot2) 0)
	(= (ready-to-load goods15 market1) 0)
	(= (on-sale goods15 market1) 0)
	(= (price goods15 market2) 7)
	(= (ready-to-load goods15 market2) 0)
	(= (on-sale goods15 market2) 1)
	(= (price goods15 market3) 33)
	(= (ready-to-load goods15 market3) 0)
	(= (on-sale goods15 market3) 10)
	(= (price goods15 market4) 38)
	(= (ready-to-load goods15 market4) 0)
	(= (on-sale goods15 market4) 10)
	(= (price goods15 market5) 22)
	(= (ready-to-load goods15 market5) 0)
	(= (on-sale goods15 market5) 8)
	(= (ready-to-load goods15 depot1) 0)
	(= (ready-to-load goods15 depot2) 0)
	(= (price goods16 market1) 31)
	(= (ready-to-load goods16 market1) 0)
	(= (on-sale goods16 market1) 6)
	(= (price goods16 market2) 9)
	(= (ready-to-load goods16 market2) 0)
	(= (on-sale goods16 market2) 16)
	(= (ready-to-load goods16 market3) 0)
	(= (on-sale goods16 market3) 0)
	(= (price goods16 market4) 16)
	(= (ready-to-load goods16 market4) 0)
	(= (on-sale goods16 market4) 7)
	(= (price goods16 market5) 33)
	(= (ready-to-load goods16 market5) 0)
	(= (on-sale goods16 market5) 4)
	(= (ready-to-load goods16 depot1) 0)
	(= (ready-to-load goods16 depot2) 0)
	(= (ready-to-load goods17 market1) 0)
	(= (on-sale goods17 market1) 0)
	(= (price goods17 market2) 30)
	(= (ready-to-load goods17 market2) 0)
	(= (on-sale goods17 market2) 15)
	(= (price goods17 market3) 44)
	(= (ready-to-load goods17 market3) 0)
	(= (on-sale goods17 market3) 9)
	(= (ready-to-load goods17 market4) 0)
	(= (on-sale goods17 market4) 0)
	(= (price goods17 market5) 32)
	(= (ready-to-load goods17 market5) 0)
	(= (on-sale goods17 market5) 16)
	(= (ready-to-load goods17 depot1) 0)
	(= (ready-to-load goods17 depot2) 0)
	(= (ready-to-load goods18 market1) 0)
	(= (on-sale goods18 market1) 0)
	(= (ready-to-load goods18 market2) 0)
	(= (on-sale goods18 market2) 0)
	(= (ready-to-load goods18 market3) 0)
	(= (on-sale goods18 market3) 0)
	(= (ready-to-load goods18 market4) 0)
	(= (on-sale goods18 market4) 0)
	(= (price goods18 market5) 21)
	(= (ready-to-load goods18 market5) 0)
	(= (on-sale goods18 market5) 10)
	(= (ready-to-load goods18 depot1) 0)
	(= (ready-to-load goods18 depot2) 0)
	(= (price goods19 market1) 3)
	(= (ready-to-load goods19 market1) 0)
	(= (on-sale goods19 market1) 8)
	(= (ready-to-load goods19 market2) 0)
	(= (on-sale goods19 market2) 0)
	(= (price goods19 market3) 10)
	(= (ready-to-load goods19 market3) 0)
	(= (on-sale goods19 market3) 11)
	(= (price goods19 market4) 27)
	(= (ready-to-load goods19 market4) 0)
	(= (on-sale goods19 market4) 9)
	(= (price goods19 market5) 9)
	(= (ready-to-load goods19 market5) 0)
	(= (on-sale goods19 market5) 13)
	(= (ready-to-load goods19 depot1) 0)
	(= (ready-to-load goods19 depot2) 0)
	(= (price goods20 market1) 4)
	(= (ready-to-load goods20 market1) 0)
	(= (on-sale goods20 market1) 4)
	(= (ready-to-load goods20 market2) 0)
	(= (on-sale goods20 market2) 0)
	(= (ready-to-load goods20 market3) 0)
	(= (on-sale goods20 market3) 0)
	(= (ready-to-load goods20 market4) 0)
	(= (on-sale goods20 market4) 0)
	(= (price goods20 market5) 47)
	(= (ready-to-load goods20 market5) 0)
	(= (on-sale goods20 market5) 15)
	(= (ready-to-load goods20 depot1) 0)
	(= (ready-to-load goods20 depot2) 0)
	(= (ready-to-load goods21 market1) 0)
	(= (on-sale goods21 market1) 0)
	(= (ready-to-load goods21 market2) 0)
	(= (on-sale goods21 market2) 0)
	(= (ready-to-load goods21 market3) 0)
	(= (on-sale goods21 market3) 0)
	(= (price goods21 market4) 5)
	(= (ready-to-load goods21 market4) 0)
	(= (on-sale goods21 market4) 19)
	(= (price goods21 market5) 25)
	(= (ready-to-load goods21 market5) 0)
	(= (on-sale goods21 market5) 8)
	(= (ready-to-load goods21 depot1) 0)
	(= (ready-to-load goods21 depot2) 0)
	(connected market1 market2)
	(connected market2 market1)
	(= (drive-cost market1 market2) 312.00)
	(= (drive-cost market2 market1) 312.00)
	(= (drive-time market1 market2) 936.00)
	(= (drive-time market2 market1) 936.00)
	(connected market1 market3)
	(connected market3 market1)
	(= (drive-cost market1 market3) 341.00)
	(= (drive-cost market3 market1) 341.00)
	(= (drive-time market1 market3) 1023.00)
	(= (drive-time market3 market1) 1023.00)
	(connected market1 market4)
	(connected market4 market1)
	(= (drive-cost market1 market4) 740.00)
	(= (drive-cost market4 market1) 740.00)
	(= (drive-time market1 market4) 2220.00)
	(= (drive-time market4 market1) 2220.00)
	(connected market1 market5)
	(connected market5 market1)
	(= (drive-cost market1 market5) 883.00)
	(= (drive-cost market5 market1) 883.00)
	(= (drive-time market1 market5) 2649.00)
	(= (drive-time market5 market1) 2649.00)
	(connected market2 market3)
	(connected market3 market2)
	(= (drive-cost market2 market3) 469.00)
	(= (drive-cost market3 market2) 469.00)
	(= (drive-time market2 market3) 1407.00)
	(= (drive-time market3 market2) 1407.00)
	(connected market2 market4)
	(connected market4 market2)
	(= (drive-cost market2 market4) 393.00)
	(= (drive-cost market4 market2) 393.00)
	(= (drive-time market2 market4) 1179.00)
	(= (drive-time market4 market2) 1179.00)
	(connected market2 market5)
	(connected market5 market2)
	(= (drive-cost market2 market5) 646.00)
	(= (drive-cost market5 market2) 646.00)
	(= (drive-time market2 market5) 1938.00)
	(= (drive-time market5 market2) 1938.00)
	(connected market3 market4)
	(connected market4 market3)
	(= (drive-cost market3 market4) 285.00)
	(= (drive-cost market4 market3) 285.00)
	(= (drive-time market3 market4) 855.00)
	(= (drive-time market4 market3) 855.00)
	(connected market3 market5)
	(connected market5 market3)
	(= (drive-cost market3 market5) 923.00)
	(= (drive-cost market5 market3) 923.00)
	(= (drive-time market3 market5) 2769.00)
	(= (drive-time market5 market3) 2769.00)
	(connected market4 market5)
	(connected market5 market4)
	(= (drive-cost market4 market5) 345.00)
	(= (drive-cost market5 market4) 345.00)
	(= (drive-time market4 market5) 1035.00)
	(= (drive-time market5 market4) 1035.00)
	(connected depot1 market1)
	(connected market1 depot1)
	(= (drive-cost market1 depot1) 280.00)
	(= (drive-cost depot1 market1) 280.00)
	(= (drive-time market1 depot1) 840.00)
	(= (drive-time depot1 market1) 840.00)
	(connected depot1 market2)
	(connected market2 depot1)
	(= (drive-cost market2 depot1) 904.00)
	(= (drive-cost depot1 market2) 904.00)
	(= (drive-time market2 depot1) 2712.00)
	(= (drive-time depot1 market2) 2712.00)
	(connected depot1 market3)
	(connected market3 depot1)
	(= (drive-cost market3 depot1) 905.00)
	(= (drive-cost depot1 market3) 905.00)
	(= (drive-time market3 depot1) 2715.00)
	(= (drive-time depot1 market3) 2715.00)
	(connected depot1 market4)
	(connected market4 depot1)
	(= (drive-cost market4 depot1) 617.00)
	(= (drive-cost depot1 market4) 617.00)
	(= (drive-time market4 depot1) 1851.00)
	(= (drive-time depot1 market4) 1851.00)
	(connected depot1 market5)
	(connected market5 depot1)
	(= (drive-cost market5 depot1) 998.00)
	(= (drive-cost depot1 market5) 998.00)
	(= (drive-time market5 depot1) 2994.00)
	(= (drive-time depot1 market5) 2994.00)
	(connected depot2 market1)
	(connected market1 depot2)
	(= (drive-cost market1 depot2) 416.00)
	(= (drive-cost depot2 market1) 416.00)
	(= (drive-time market1 depot2) 1248.00)
	(= (drive-time depot2 market1) 1248.00)
	(connected depot2 market2)
	(connected market2 depot2)
	(= (drive-cost market2 depot2) 654.00)
	(= (drive-cost depot2 market2) 654.00)
	(= (drive-time market2 depot2) 1962.00)
	(= (drive-time depot2 market2) 1962.00)
	(connected depot2 market3)
	(connected market3 depot2)
	(= (drive-cost market3 depot2) 663.00)
	(= (drive-cost depot2 market3) 663.00)
	(= (drive-time market3 depot2) 1989.00)
	(= (drive-time depot2 market3) 1989.00)
	(connected depot2 market4)
	(connected market4 depot2)
	(= (drive-cost market4 depot2) 298.00)
	(= (drive-cost depot2 market4) 298.00)
	(= (drive-time market4 depot2) 894.00)
	(= (drive-time depot2 market4) 894.00)
	(connected depot2 market5)
	(connected market5 depot2)
	(= (drive-cost market5 depot2) 370.00)
	(= (drive-cost depot2 market5) 370.00)
	(= (drive-time market5 depot2) 1110.00)
	(= (drive-time depot2 market5) 1110.00)
	(= (loaded goods1 truck1) 0)
	(= (loaded goods2 truck1) 0)
	(= (loaded goods3 truck1) 0)
	(= (loaded goods4 truck1) 0)
	(= (loaded goods5 truck1) 0)
	(= (loaded goods6 truck1) 0)
	(= (loaded goods7 truck1) 0)
	(= (loaded goods8 truck1) 0)
	(= (loaded goods9 truck1) 0)
	(= (loaded goods10 truck1) 0)
	(= (loaded goods11 truck1) 0)
	(= (loaded goods12 truck1) 0)
	(= (loaded goods13 truck1) 0)
	(= (loaded goods14 truck1) 0)
	(= (loaded goods15 truck1) 0)
	(= (loaded goods16 truck1) 0)
	(= (loaded goods17 truck1) 0)
	(= (loaded goods18 truck1) 0)
	(= (loaded goods19 truck1) 0)
	(= (loaded goods20 truck1) 0)
	(= (loaded goods21 truck1) 0)
	(at truck1 depot2)
	(= (loaded goods1 truck2) 0)
	(= (loaded goods2 truck2) 0)
	(= (loaded goods3 truck2) 0)
	(= (loaded goods4 truck2) 0)
	(= (loaded goods5 truck2) 0)
	(= (loaded goods6 truck2) 0)
	(= (loaded goods7 truck2) 0)
	(= (loaded goods8 truck2) 0)
	(= (loaded goods9 truck2) 0)
	(= (loaded goods10 truck2) 0)
	(= (loaded goods11 truck2) 0)
	(= (loaded goods12 truck2) 0)
	(= (loaded goods13 truck2) 0)
	(= (loaded goods14 truck2) 0)
	(= (loaded goods15 truck2) 0)
	(= (loaded goods16 truck2) 0)
	(= (loaded goods17 truck2) 0)
	(= (loaded goods18 truck2) 0)
	(= (loaded goods19 truck2) 0)
	(= (loaded goods20 truck2) 0)
	(= (loaded goods21 truck2) 0)
	(at truck2 depot2)
	(= (loaded goods1 truck3) 0)
	(= (loaded goods2 truck3) 0)
	(= (loaded goods3 truck3) 0)
	(= (loaded goods4 truck3) 0)
	(= (loaded goods5 truck3) 0)
	(= (loaded goods6 truck3) 0)
	(= (loaded goods7 truck3) 0)
	(= (loaded goods8 truck3) 0)
	(= (loaded goods9 truck3) 0)
	(= (loaded goods10 truck3) 0)
	(= (loaded goods11 truck3) 0)
	(= (loaded goods12 truck3) 0)
	(= (loaded goods13 truck3) 0)
	(= (loaded goods14 truck3) 0)
	(= (loaded goods15 truck3) 0)
	(= (loaded goods16 truck3) 0)
	(= (loaded goods17 truck3) 0)
	(= (loaded goods18 truck3) 0)
	(= (loaded goods19 truck3) 0)
	(= (loaded goods20 truck3) 0)
	(= (loaded goods21 truck3) 0)
	(at truck3 depot1)
	(= (stored goods1) 0)
	(= (stored goods2) 0)
	(= (stored goods3) 0)
	(= (stored goods4) 0)
	(= (stored goods5) 0)
	(= (stored goods6) 0)
	(= (stored goods7) 0)
	(= (stored goods8) 0)
	(= (stored goods9) 0)
	(= (stored goods10) 0)
	(= (stored goods11) 0)
	(= (stored goods12) 0)
	(= (stored goods13) 0)
	(= (stored goods14) 0)
	(= (stored goods15) 0)
	(= (stored goods16) 0)
	(= (stored goods17) 0)
	(= (stored goods18) 0)
	(= (stored goods19) 0)
	(= (stored goods20) 0)
	(= (stored goods21) 0)
	(= (total-cost) 0)
	(= (rebate-rate market1) 0.84)
	(= (rebate-rate market2) 0.78)
	(= (rebate-rate market3) 0.87)
	(= (rebate-rate market4) 0.78)
	(= (rebate-rate market5) 0.90)
	(= (bought goods1) 0)
	(= (bought goods2) 0)
	(= (bought goods3) 0)
	(= (bought goods4) 0)
	(= (bought goods5) 0)
	(= (bought goods6) 0)
	(= (bought goods7) 0)
	(= (bought goods8) 0)
	(= (bought goods9) 0)
	(= (bought goods10) 0)
	(= (bought goods11) 0)
	(= (bought goods12) 0)
	(= (bought goods13) 0)
	(= (bought goods14) 0)
	(= (bought goods15) 0)
	(= (bought goods16) 0)
	(= (bought goods17) 0)
	(= (bought goods18) 0)
	(= (bought goods19) 0)
	(= (bought goods20) 0)
	(= (bought goods21) 0)
	(= (request goods1) 24)
	(= (request goods2) 19)
	(= (request goods3) 11)
	(= (request goods4) 15)
	(= (request goods5) 10)
	(= (request goods6) 2)
	(= (request goods7) 4)
	(= (request goods8) 38)
	(= (request goods9) 18)
	(= (request goods10) 5)
	(= (request goods11) 14)
	(= (request goods12) 31)
	(= (request goods13) 6)
	(= (request goods14) 5)
	(= (request goods15) 6)
	(= (request goods16) 26)
	(= (request goods17) 12)
	(= (request goods18) 4)
	(= (request goods19) 35)
	(= (request goods20) 6)
	(= (request goods21) 9))

(:goal (and
	(>= (stored goods1) (request goods1))
	(>= (stored goods2) (request goods2))
	(>= (stored goods3) (request goods3))
	(>= (stored goods4) (request goods4))
	(>= (stored goods5) (request goods5))
	(>= (stored goods6) (request goods6))
	(>= (stored goods7) (request goods7))
	(>= (stored goods8) (request goods8))
	(>= (stored goods9) (request goods9))
	(>= (stored goods10) (request goods10))
	(>= (stored goods11) (request goods11))
	(>= (stored goods12) (request goods12))
	(>= (stored goods13) (request goods13))
	(>= (stored goods14) (request goods14))
	(>= (stored goods15) (request goods15))
	(>= (stored goods16) (request goods16))
	(>= (stored goods17) (request goods17))
	(>= (stored goods18) (request goods18))
	(>= (stored goods19) (request goods19))
	(>= (stored goods20) (request goods20))
	(>= (stored goods21) (request goods21))))

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

	(preference p0A (always (>= (stored goods11) (stored goods5))))
	(preference p0B (always (>= (stored goods13) (stored goods14))))
	(preference p0C (always (>= (stored goods21) (stored goods13))))

	(forall (?t - truck)
	   (preference p4A (always-within 1520.00 (> (loaded goods18 ?t) 0)
			      (= (loaded goods18 ?t) 0))))

	(forall (?t - truck)
	   (preference p4B (always-within 2399.00 (> (loaded goods17 ?t) 0)
			      (= (loaded goods17 ?t) 0))))

	(forall (?t - truck)
	   (preference p4C (always-within 1520.00 (> (loaded goods21 ?t) 0)
			      (= (loaded goods21 ?t) 0))))

	(forall (?t - truck)
	   (preference p4D (always-within 1271.00 (> (loaded goods16 ?t) 0)
			      (= (loaded goods16 ?t) 0))))

	(forall (?t - truck)
	   (preference p4E (always-within 1289.00 (> (loaded goods1 ?t) 0)
			      (= (loaded goods1 ?t) 0))))

	(forall (?t - truck)
	   (preference p4F (always-within 2216.00 (> (loaded goods11 ?t) 0)
			      (= (loaded goods11 ?t) 0))))

	(forall (?t - truck)
	   (preference p3A (sometime (exists (?g - goods) (> (loaded ?g ?t) 0)))))

	(preference p0D (sometime-before (> (stored goods16) 0)
			   (>= (stored goods9) (request goods9))))
	(preference p0E (sometime-before (> (stored goods8) 0)
			   (>= (stored goods7) (request goods7))))
	(preference p0F (sometime-before (> (stored goods19) 0)
			   (>= (stored goods12) (request goods12))))
	(preference p0G (sometime-before (> (stored goods2) 0)
			   (>= (stored goods20) (request goods20))))
	(preference p0H (sometime-before (> (stored goods6) 0)
			   (>= (stored goods1) (request goods1))))
	(preference p0I (sometime-before (> (stored goods18) 0)
			   (>= (stored goods3) (request goods3))))
	(preference p0J (sometime-before (> (stored goods4) 0)
			   (>= (stored goods15) (request goods15))))
	(preference p0K (sometime-before (> (stored goods17) 0)
			   (>= (stored goods10) (request goods10))))))

(:metric minimize (+ (* 1 (is-violated p0A))
		     (* 1 (is-violated p0B))
		     (* 1 (is-violated p0C))
		     (* 1 (is-violated p0D))
		     (* 1 (is-violated p0E))
		     (* 1 (is-violated p0F))
		     (* 1 (is-violated p0G))
		     (* 1 (is-violated p0H))
		     (* 1 (is-violated p0I))
		     (* 1 (is-violated p0J))
		     (* 1 (is-violated p0K))
		     (* 2 (is-violated p1A))
		     (* 2 (is-violated p1B))
		     (* 3 (is-violated p2A))
		     (* 4 (is-violated p3A))
		     (* 5 (is-violated p4A))
		     (* 5 (is-violated p4B))
		     (* 5 (is-violated p4C))
		     (* 5 (is-violated p4D))
		     (* 5 (is-violated p4E))
		     (* 5 (is-violated p4F))
		     (* 6 (is-violated p5A))
		     (* 1 (is-violated p-drive))))
)