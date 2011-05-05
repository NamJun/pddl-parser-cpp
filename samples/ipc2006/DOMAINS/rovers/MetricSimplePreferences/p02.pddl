
(define (problem roverprob31337-3)
        (:domain rover)
        (:objects general - lander colour - mode high_res - mode low_res - mode
         rover0 - rover rover0store - store waypoint0 - waypoint waypoint1 -
         waypoint waypoint2 - waypoint waypoint3 - waypoint waypoint4 -
         waypoint waypoint5 - waypoint waypoint6 - waypoint waypoint7 -
         waypoint waypoint8 - waypoint waypoint9 - waypoint camera0 - camera
         camera1 - camera camera2 - camera objective0 - objective objective1 -
         objective objective2 - objective objective3 - objective objective4 -
         objective objective5 - objective objective6 - objective objective7 -
         objective objective8 - objective objective9 - objective)
        (:init (visible waypoint0 waypoint5) (visible waypoint5 waypoint0)
         (visible waypoint0 waypoint6) (visible waypoint6 waypoint0)
         (visible waypoint1 waypoint0) (visible waypoint0 waypoint1)
         (visible waypoint1 waypoint5) (visible waypoint5 waypoint1)
         (visible waypoint1 waypoint9) (visible waypoint9 waypoint1)
         (visible waypoint2 waypoint1) (visible waypoint1 waypoint2)
         (visible waypoint2 waypoint7) (visible waypoint7 waypoint2)
         (visible waypoint2 waypoint8) (visible waypoint8 waypoint2)
         (visible waypoint2 waypoint9) (visible waypoint9 waypoint2)
         (visible waypoint3 waypoint1) (visible waypoint1 waypoint3)
         (visible waypoint3 waypoint7) (visible waypoint7 waypoint3)
         (visible waypoint3 waypoint8) (visible waypoint8 waypoint3)
         (visible waypoint4 waypoint0) (visible waypoint0 waypoint4)
         (visible waypoint4 waypoint1) (visible waypoint1 waypoint4)
         (visible waypoint4 waypoint2) (visible waypoint2 waypoint4)
         (visible waypoint4 waypoint3) (visible waypoint3 waypoint4)
         (visible waypoint4 waypoint5) (visible waypoint5 waypoint4)
         (visible waypoint4 waypoint9) (visible waypoint9 waypoint4)
         (visible waypoint5 waypoint3) (visible waypoint3 waypoint5)
         (visible waypoint5 waypoint8) (visible waypoint8 waypoint5)
         (visible waypoint6 waypoint1) (visible waypoint1 waypoint6)
         (visible waypoint6 waypoint2) (visible waypoint2 waypoint6)
         (visible waypoint6 waypoint4) (visible waypoint4 waypoint6)
         (visible waypoint6 waypoint5) (visible waypoint5 waypoint6)
         (visible waypoint6 waypoint7) (visible waypoint7 waypoint6)
         (visible waypoint6 waypoint8) (visible waypoint8 waypoint6)
         (visible waypoint7 waypoint5) (visible waypoint5 waypoint7)
         (visible waypoint8 waypoint0) (visible waypoint0 waypoint8)
         (visible waypoint8 waypoint1) (visible waypoint1 waypoint8)
         (visible waypoint9 waypoint0) (visible waypoint0 waypoint9)
         (visible waypoint9 waypoint3) (visible waypoint3 waypoint9)
         (visible waypoint9 waypoint5) (visible waypoint5 waypoint9)
         (at_rock_sample waypoint2) (at_rock_sample waypoint3)
         (at_soil_sample waypoint4) (at_rock_sample waypoint5)
         (at_rock_sample waypoint6) (at_rock_sample waypoint7)
         (at_rock_sample waypoint8) (at_soil_sample waypoint9)
         (at_lander general waypoint7) (channel_free general)
         (at rover0 waypoint6) (available rover0) (store_of rover0store rover0)
         (empty rover0store) (equipped_for_soil_analysis rover0)
         (equipped_for_rock_analysis rover0) (equipped_for_imaging rover0)
         (can_traverse rover0 waypoint6 waypoint0)
         (can_traverse rover0 waypoint0 waypoint6)
         (can_traverse rover0 waypoint6 waypoint1)
         (can_traverse rover0 waypoint1 waypoint6)
         (can_traverse rover0 waypoint6 waypoint2)
         (can_traverse rover0 waypoint2 waypoint6)
         (can_traverse rover0 waypoint6 waypoint5)
         (can_traverse rover0 waypoint5 waypoint6)
         (can_traverse rover0 waypoint6 waypoint7)
         (can_traverse rover0 waypoint7 waypoint6)
         (can_traverse rover0 waypoint6 waypoint8)
         (can_traverse rover0 waypoint8 waypoint6)
         (can_traverse rover0 waypoint0 waypoint4)
         (can_traverse rover0 waypoint4 waypoint0)
         (can_traverse rover0 waypoint0 waypoint9)
         (can_traverse rover0 waypoint9 waypoint0)
         (can_traverse rover0 waypoint1 waypoint3)
         (can_traverse rover0 waypoint3 waypoint1) (on_board camera0 rover0)
         (calibration_target camera0 objective3) (supports camera0 colour)
         (on_board camera1 rover0) (calibration_target camera1 objective6)
         (supports camera1 high_res) (on_board camera2 rover0)
         (calibration_target camera2 objective8) (supports camera2 colour)
         (supports camera2 low_res) (visible_from objective0 waypoint0)
         (visible_from objective0 waypoint1)
         (visible_from objective0 waypoint2)
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
         (visible_from objective3 waypoint0)
         (visible_from objective3 waypoint1)
         (visible_from objective3 waypoint2)
         (visible_from objective3 waypoint3)
         (visible_from objective3 waypoint4)
         (visible_from objective3 waypoint5)
         (visible_from objective3 waypoint6)
         (visible_from objective3 waypoint7)
         (visible_from objective4 waypoint0)
         (visible_from objective5 waypoint0)
         (visible_from objective5 waypoint1)
         (visible_from objective5 waypoint2)
         (visible_from objective6 waypoint0)
         (visible_from objective6 waypoint1)
         (visible_from objective6 waypoint2)
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
         (= (traverse_cost rover0 waypoint6 waypoint0) 69.3)
         (= (traverse_cost rover0 waypoint0 waypoint6) 69.3)
         (= (traverse_cost rover0 waypoint6 waypoint1) 34.6)
         (= (traverse_cost rover0 waypoint1 waypoint6) 31.2)
         (= (traverse_cost rover0 waypoint6 waypoint2) 28.4)
         (= (traverse_cost rover0 waypoint2 waypoint6) 30.8)
         (= (traverse_cost rover0 waypoint6 waypoint5) 41.2)
         (= (traverse_cost rover0 waypoint5 waypoint6) 47.3)
         (= (traverse_cost rover0 waypoint6 waypoint7) 73.8)
         (= (traverse_cost rover0 waypoint7 waypoint6) 66.1)
         (= (traverse_cost rover0 waypoint6 waypoint8) 41)
         (= (traverse_cost rover0 waypoint8 waypoint6) 25.4)
         (= (traverse_cost rover0 waypoint0 waypoint4) 72.9)
         (= (traverse_cost rover0 waypoint4 waypoint0) 124.2)
         (= (traverse_cost rover0 waypoint0 waypoint9) 33)
         (= (traverse_cost rover0 waypoint9 waypoint0) 26.7)
         (= (traverse_cost rover0 waypoint1 waypoint3) 70.2)
         (= (traverse_cost rover0 waypoint3 waypoint1) 63.3)
         (= (sum-traverse-cost) 0))
        (:goal
         (and (preference g0 (communicated_soil_data waypoint9))
              (preference g1 (communicated_rock_data waypoint7))
              (preference g2 (communicated_rock_data waypoint6))
              (preference g3 (communicated_rock_data waypoint3))
              (preference g4 (communicated_rock_data waypoint2))
              (preference g5 (communicated_image_data objective3 colour))))
        (:metric minimize
         (+ (* (is-violated g5) 65.9)
            (* (is-violated g4) 34.2)
            (* (is-violated g3) 106.6)
            (* (is-violated g2) 65.9)
            (* (is-violated g1) 187.4)
            (* (is-violated g0) 331.1)
            (sum-traverse-cost))))