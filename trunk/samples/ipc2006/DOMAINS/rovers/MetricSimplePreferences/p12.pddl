
(define (problem roverprob19841-4)
        (:domain rover)
        (:objects general - lander colour - mode high_res - mode low_res - mode
         rover0 - rover rover1 - rover rover0store - store rover1store - store
         waypoint0 - waypoint waypoint1 - waypoint waypoint2 - waypoint
         waypoint3 - waypoint waypoint4 - waypoint waypoint5 - waypoint
         waypoint6 - waypoint waypoint7 - waypoint waypoint8 - waypoint
         waypoint9 - waypoint waypoint10 - waypoint waypoint11 - waypoint
         waypoint12 - waypoint waypoint13 - waypoint waypoint14 - waypoint
         camera0 - camera camera1 - camera objective0 - objective objective1 -
         objective objective2 - objective objective3 - objective objective4 -
         objective objective5 - objective objective6 - objective objective7 -
         objective objective8 - objective objective9 - objective objective10 -
         objective objective11 - objective objective12 - objective objective13
         - objective objective14 - objective)
        (:init (visible waypoint0 waypoint7) (visible waypoint7 waypoint0)
         (visible waypoint0 waypoint14) (visible waypoint14 waypoint0)
         (visible waypoint1 waypoint5) (visible waypoint5 waypoint1)
         (visible waypoint1 waypoint8) (visible waypoint8 waypoint1)
         (visible waypoint1 waypoint9) (visible waypoint9 waypoint1)
         (visible waypoint1 waypoint10) (visible waypoint10 waypoint1)
         (visible waypoint1 waypoint13) (visible waypoint13 waypoint1)
         (visible waypoint2 waypoint1) (visible waypoint1 waypoint2)
         (visible waypoint2 waypoint6) (visible waypoint6 waypoint2)
         (visible waypoint3 waypoint1) (visible waypoint1 waypoint3)
         (visible waypoint3 waypoint4) (visible waypoint4 waypoint3)
         (visible waypoint3 waypoint14) (visible waypoint14 waypoint3)
         (visible waypoint4 waypoint1) (visible waypoint1 waypoint4)
         (visible waypoint4 waypoint14) (visible waypoint14 waypoint4)
         (visible waypoint5 waypoint7) (visible waypoint7 waypoint5)
         (visible waypoint5 waypoint10) (visible waypoint10 waypoint5)
         (visible waypoint5 waypoint11) (visible waypoint11 waypoint5)
         (visible waypoint6 waypoint5) (visible waypoint5 waypoint6)
         (visible waypoint6 waypoint7) (visible waypoint7 waypoint6)
         (visible waypoint6 waypoint9) (visible waypoint9 waypoint6)
         (visible waypoint6 waypoint10) (visible waypoint10 waypoint6)
         (visible waypoint6 waypoint11) (visible waypoint11 waypoint6)
         (visible waypoint6 waypoint13) (visible waypoint13 waypoint6)
         (visible waypoint6 waypoint14) (visible waypoint14 waypoint6)
         (visible waypoint7 waypoint2) (visible waypoint2 waypoint7)
         (visible waypoint7 waypoint3) (visible waypoint3 waypoint7)
         (visible waypoint7 waypoint8) (visible waypoint8 waypoint7)
         (visible waypoint7 waypoint10) (visible waypoint10 waypoint7)
         (visible waypoint7 waypoint14) (visible waypoint14 waypoint7)
         (visible waypoint8 waypoint2) (visible waypoint2 waypoint8)
         (visible waypoint8 waypoint4) (visible waypoint4 waypoint8)
         (visible waypoint8 waypoint5) (visible waypoint5 waypoint8)
         (visible waypoint9 waypoint2) (visible waypoint2 waypoint9)
         (visible waypoint9 waypoint4) (visible waypoint4 waypoint9)
         (visible waypoint9 waypoint5) (visible waypoint5 waypoint9)
         (visible waypoint9 waypoint14) (visible waypoint14 waypoint9)
         (visible waypoint10 waypoint4) (visible waypoint4 waypoint10)
         (visible waypoint10 waypoint12) (visible waypoint12 waypoint10)
         (visible waypoint11 waypoint1) (visible waypoint1 waypoint11)
         (visible waypoint11 waypoint3) (visible waypoint3 waypoint11)
         (visible waypoint11 waypoint7) (visible waypoint7 waypoint11)
         (visible waypoint11 waypoint9) (visible waypoint9 waypoint11)
         (visible waypoint11 waypoint10) (visible waypoint10 waypoint11)
         (visible waypoint11 waypoint12) (visible waypoint12 waypoint11)
         (visible waypoint12 waypoint2) (visible waypoint2 waypoint12)
         (visible waypoint12 waypoint5) (visible waypoint5 waypoint12)
         (visible waypoint12 waypoint6) (visible waypoint6 waypoint12)
         (visible waypoint12 waypoint8) (visible waypoint8 waypoint12)
         (visible waypoint13 waypoint8) (visible waypoint8 waypoint13)
         (visible waypoint13 waypoint9) (visible waypoint9 waypoint13)
         (visible waypoint14 waypoint8) (visible waypoint8 waypoint14)
         (at_rock_sample waypoint1) (at_soil_sample waypoint2)
         (at_rock_sample waypoint2) (at_soil_sample waypoint4)
         (at_rock_sample waypoint4) (at_soil_sample waypoint5)
         (at_rock_sample waypoint5) (at_soil_sample waypoint6)
         (at_rock_sample waypoint6) (at_soil_sample waypoint8)
         (at_rock_sample waypoint8) (at_soil_sample waypoint9)
         (at_rock_sample waypoint9) (at_soil_sample waypoint10)
         (at_soil_sample waypoint11) (at_rock_sample waypoint11)
         (at_soil_sample waypoint12) (at_soil_sample waypoint13)
         (at_rock_sample waypoint14) (at_lander general waypoint3)
         (channel_free general) (at rover0 waypoint9) (available rover0)
         (store_of rover0store rover0) (empty rover0store)
         (equipped_for_soil_analysis rover0) (equipped_for_imaging rover0)
         (can_traverse rover0 waypoint9 waypoint1)
         (can_traverse rover0 waypoint1 waypoint9)
         (can_traverse rover0 waypoint9 waypoint2)
         (can_traverse rover0 waypoint2 waypoint9)
         (can_traverse rover0 waypoint9 waypoint4)
         (can_traverse rover0 waypoint4 waypoint9)
         (can_traverse rover0 waypoint9 waypoint5)
         (can_traverse rover0 waypoint5 waypoint9)
         (can_traverse rover0 waypoint9 waypoint6)
         (can_traverse rover0 waypoint6 waypoint9)
         (can_traverse rover0 waypoint9 waypoint11)
         (can_traverse rover0 waypoint11 waypoint9)
         (can_traverse rover0 waypoint1 waypoint3)
         (can_traverse rover0 waypoint3 waypoint1)
         (can_traverse rover0 waypoint1 waypoint10)
         (can_traverse rover0 waypoint10 waypoint1)
         (can_traverse rover0 waypoint1 waypoint13)
         (can_traverse rover0 waypoint13 waypoint1)
         (can_traverse rover0 waypoint2 waypoint7)
         (can_traverse rover0 waypoint7 waypoint2)
         (can_traverse rover0 waypoint2 waypoint12)
         (can_traverse rover0 waypoint12 waypoint2)
         (can_traverse rover0 waypoint4 waypoint14)
         (can_traverse rover0 waypoint14 waypoint4)
         (can_traverse rover0 waypoint5 waypoint8)
         (can_traverse rover0 waypoint8 waypoint5) (at rover1 waypoint10)
         (available rover1) (store_of rover1store rover1) (empty rover1store)
         (equipped_for_soil_analysis rover1)
         (equipped_for_rock_analysis rover1) (equipped_for_imaging rover1)
         (can_traverse rover1 waypoint10 waypoint1)
         (can_traverse rover1 waypoint1 waypoint10)
         (can_traverse rover1 waypoint10 waypoint4)
         (can_traverse rover1 waypoint4 waypoint10)
         (can_traverse rover1 waypoint10 waypoint6)
         (can_traverse rover1 waypoint6 waypoint10)
         (can_traverse rover1 waypoint10 waypoint7)
         (can_traverse rover1 waypoint7 waypoint10)
         (can_traverse rover1 waypoint10 waypoint11)
         (can_traverse rover1 waypoint11 waypoint10)
         (can_traverse rover1 waypoint10 waypoint12)
         (can_traverse rover1 waypoint12 waypoint10)
         (can_traverse rover1 waypoint1 waypoint3)
         (can_traverse rover1 waypoint3 waypoint1)
         (can_traverse rover1 waypoint1 waypoint9)
         (can_traverse rover1 waypoint9 waypoint1)
         (can_traverse rover1 waypoint4 waypoint8)
         (can_traverse rover1 waypoint8 waypoint4)
         (can_traverse rover1 waypoint4 waypoint14)
         (can_traverse rover1 waypoint14 waypoint4)
         (can_traverse rover1 waypoint6 waypoint2)
         (can_traverse rover1 waypoint2 waypoint6)
         (can_traverse rover1 waypoint6 waypoint5)
         (can_traverse rover1 waypoint5 waypoint6)
         (can_traverse rover1 waypoint6 waypoint13)
         (can_traverse rover1 waypoint13 waypoint6)
         (can_traverse rover1 waypoint7 waypoint0)
         (can_traverse rover1 waypoint0 waypoint7) (on_board camera0 rover0)
         (calibration_target camera0 objective3) (supports camera0 colour)
         (supports camera0 high_res) (supports camera0 low_res)
         (on_board camera1 rover1) (calibration_target camera1 objective7)
         (supports camera1 colour) (supports camera1 low_res)
         (visible_from objective0 waypoint0)
         (visible_from objective0 waypoint1)
         (visible_from objective0 waypoint2)
         (visible_from objective0 waypoint3)
         (visible_from objective0 waypoint4)
         (visible_from objective0 waypoint5)
         (visible_from objective1 waypoint0)
         (visible_from objective1 waypoint1)
         (visible_from objective1 waypoint2)
         (visible_from objective1 waypoint3)
         (visible_from objective2 waypoint0)
         (visible_from objective2 waypoint1)
         (visible_from objective2 waypoint2)
         (visible_from objective2 waypoint3)
         (visible_from objective2 waypoint4)
         (visible_from objective2 waypoint5)
         (visible_from objective2 waypoint6)
         (visible_from objective2 waypoint7)
         (visible_from objective2 waypoint8)
         (visible_from objective2 waypoint9)
         (visible_from objective3 waypoint0)
         (visible_from objective4 waypoint0)
         (visible_from objective4 waypoint1)
         (visible_from objective4 waypoint2)
         (visible_from objective5 waypoint0)
         (visible_from objective5 waypoint1)
         (visible_from objective5 waypoint2)
         (visible_from objective5 waypoint3)
         (visible_from objective5 waypoint4)
         (visible_from objective5 waypoint5)
         (visible_from objective5 waypoint6)
         (visible_from objective5 waypoint7)
         (visible_from objective5 waypoint8)
         (visible_from objective5 waypoint9)
         (visible_from objective5 waypoint10)
         (visible_from objective5 waypoint11)
         (visible_from objective6 waypoint0)
         (visible_from objective6 waypoint1)
         (visible_from objective6 waypoint2)
         (visible_from objective6 waypoint3)
         (visible_from objective6 waypoint4)
         (visible_from objective6 waypoint5)
         (visible_from objective6 waypoint6)
         (visible_from objective6 waypoint7)
         (visible_from objective6 waypoint8)
         (visible_from objective6 waypoint9)
         (visible_from objective6 waypoint10)
         (visible_from objective6 waypoint11)
         (visible_from objective6 waypoint12)
         (visible_from objective6 waypoint13)
         (visible_from objective6 waypoint14)
         (visible_from objective7 waypoint0)
         (visible_from objective7 waypoint1)
         (visible_from objective7 waypoint2)
         (visible_from objective7 waypoint3)
         (visible_from objective7 waypoint4)
         (visible_from objective7 waypoint5)
         (visible_from objective7 waypoint6)
         (visible_from objective7 waypoint7)
         (visible_from objective8 waypoint0)
         (visible_from objective8 waypoint1)
         (visible_from objective8 waypoint2)
         (visible_from objective9 waypoint0)
         (visible_from objective9 waypoint1)
         (visible_from objective9 waypoint2)
         (visible_from objective9 waypoint3)
         (visible_from objective9 waypoint4)
         (visible_from objective9 waypoint5)
         (visible_from objective10 waypoint0)
         (visible_from objective10 waypoint1)
         (visible_from objective10 waypoint2)
         (visible_from objective10 waypoint3)
         (visible_from objective10 waypoint4)
         (visible_from objective10 waypoint5)
         (visible_from objective10 waypoint6)
         (visible_from objective10 waypoint7)
         (visible_from objective10 waypoint8)
         (visible_from objective10 waypoint9)
         (visible_from objective10 waypoint10)
         (visible_from objective11 waypoint0)
         (visible_from objective11 waypoint1)
         (visible_from objective11 waypoint2)
         (visible_from objective11 waypoint3)
         (visible_from objective12 waypoint0)
         (visible_from objective12 waypoint1)
         (visible_from objective13 waypoint0)
         (visible_from objective13 waypoint1)
         (visible_from objective13 waypoint2)
         (visible_from objective13 waypoint3)
         (visible_from objective14 waypoint0)
         (visible_from objective14 waypoint1)
         (visible_from objective14 waypoint2)
         (visible_from objective14 waypoint3)
         (visible_from objective14 waypoint4)
         (visible_from objective14 waypoint5)
         (visible_from objective14 waypoint6)
         (visible_from objective14 waypoint7)
         (visible_from objective14 waypoint8)
         (visible_from objective14 waypoint9)
         (visible_from objective14 waypoint10)
         (= (traverse_cost rover0 waypoint9 waypoint1) 74.3)
         (= (traverse_cost rover0 waypoint1 waypoint9) 86.2)
         (= (traverse_cost rover0 waypoint9 waypoint2) 20.2)
         (= (traverse_cost rover0 waypoint2 waypoint9) 17.2)
         (= (traverse_cost rover0 waypoint9 waypoint4) 9.8)
         (= (traverse_cost rover0 waypoint4 waypoint9) 11.8)
         (= (traverse_cost rover0 waypoint9 waypoint5) 67)
         (= (traverse_cost rover0 waypoint5 waypoint9) 43.4)
         (= (traverse_cost rover0 waypoint9 waypoint6) 71)
         (= (traverse_cost rover0 waypoint6 waypoint9) 67.6)
         (= (traverse_cost rover0 waypoint9 waypoint11) 73.3)
         (= (traverse_cost rover0 waypoint11 waypoint9) 51.7)
         (= (traverse_cost rover0 waypoint1 waypoint3) 65.7)
         (= (traverse_cost rover0 waypoint3 waypoint1) 47.3)
         (= (traverse_cost rover0 waypoint1 waypoint10) 17.4)
         (= (traverse_cost rover0 waypoint10 waypoint1) 9.8)
         (= (traverse_cost rover0 waypoint1 waypoint13) 15)
         (= (traverse_cost rover0 waypoint13 waypoint1) 16.9)
         (= (traverse_cost rover0 waypoint2 waypoint7) 32.5)
         (= (traverse_cost rover0 waypoint7 waypoint2) 38.4)
         (= (traverse_cost rover0 waypoint2 waypoint12) 91.3)
         (= (traverse_cost rover0 waypoint12 waypoint2) 92.8)
         (= (traverse_cost rover0 waypoint4 waypoint14) 103.7)
         (= (traverse_cost rover0 waypoint14 waypoint4) 93.9)
         (= (traverse_cost rover0 waypoint5 waypoint8) 20.5)
         (= (traverse_cost rover0 waypoint8 waypoint5) 12.2)
         (= (traverse_cost rover1 waypoint10 waypoint1) 12.7)
         (= (traverse_cost rover1 waypoint1 waypoint10) 17.4)
         (= (traverse_cost rover1 waypoint10 waypoint4) 108.5)
         (= (traverse_cost rover1 waypoint4 waypoint10) 96.5)
         (= (traverse_cost rover1 waypoint10 waypoint6) 71.2)
         (= (traverse_cost rover1 waypoint6 waypoint10) 43.8)
         (= (traverse_cost rover1 waypoint10 waypoint7) 66.5)
         (= (traverse_cost rover1 waypoint7 waypoint10) 85.3)
         (= (traverse_cost rover1 waypoint10 waypoint11) 78.6)
         (= (traverse_cost rover1 waypoint11 waypoint10) 56)
         (= (traverse_cost rover1 waypoint10 waypoint12) 23.5)
         (= (traverse_cost rover1 waypoint12 waypoint10) 23.2)
         (= (traverse_cost rover1 waypoint1 waypoint3) 64.2)
         (= (traverse_cost rover1 waypoint3 waypoint1) 45.8)
         (= (traverse_cost rover1 waypoint1 waypoint9) 70.3)
         (= (traverse_cost rover1 waypoint9 waypoint1) 71.3)
         (= (traverse_cost rover1 waypoint4 waypoint8) 90.4)
         (= (traverse_cost rover1 waypoint8 waypoint4) 65.8)
         (= (traverse_cost rover1 waypoint4 waypoint14) 38.3)
         (= (traverse_cost rover1 waypoint14 waypoint4) 88.7)
         (= (traverse_cost rover1 waypoint6 waypoint2) 54)
         (= (traverse_cost rover1 waypoint2 waypoint6) 52.5)
         (= (traverse_cost rover1 waypoint6 waypoint5) 78.5)
         (= (traverse_cost rover1 waypoint5 waypoint6) 63.9)
         (= (traverse_cost rover1 waypoint6 waypoint13) 74.2)
         (= (traverse_cost rover1 waypoint13 waypoint6) 55.6)
         (= (traverse_cost rover1 waypoint7 waypoint0) 19.9)
         (= (traverse_cost rover1 waypoint0 waypoint7) 29.9)
         (= (sum-traverse-cost) 0))
        (:goal
         (and (preference g0 (communicated_soil_data waypoint12))
              (preference g1 (communicated_soil_data waypoint10))
              (preference g2 (communicated_soil_data waypoint9))
              (preference g3 (communicated_soil_data waypoint8))
              (preference g4 (communicated_soil_data waypoint6))
              (preference g5 (communicated_soil_data waypoint2))
              (preference g6 (communicated_rock_data waypoint6))
              (preference g7 (communicated_image_data objective10 low_res))
              (preference g8 (communicated_image_data objective5 colour))
              (preference g9 (communicated_image_data objective1 colour))))
        (:metric minimize
         (+ (* (is-violated g9) 7.4)
            (* (is-violated g8) 10)
            (* (is-violated g7) 11.1)
            (* (is-violated g6) 121.6)
            (* (is-violated g5) 46.6)
            (* (is-violated g4) 116.5)
            (* (is-violated g3) 150.9)
            (* (is-violated g2) 7.2)
            (* (is-violated g1) 9.2)
            (* (is-violated g0) 55.5)
            (sum-traverse-cost))))
