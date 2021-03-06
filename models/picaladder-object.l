;;
;; DO NOT EDIT THIS FILE
;; this file is automatically generated from euslisp+euslib version 
;;
;;
(defclass picaladder-object
  :super cascaded-link
  :slots (sensors
         ))
(defmethod picaladder-object
  (:init
   (&rest args &key (name "picaladder") (pos (float-vector 0 0 0)) (rot (unit-matrix 3)) &allow-other-keys)
   (let (c bc
         blink0
                 )
     (send-super* :init :name name args)

     ;; definition of link

     ;; definition of :root
     (setq bc (list
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector -40.0 259.0 1814.0) (float-vector -40.0 259.0 1834.0) (float-vector 40.0 259.0 1834.0) (float-vector 40.0 259.0 1814.0)))
         (instance face :init :vertices (list (float-vector -40.0 -259.0 1834.0) (float-vector -40.0 -259.0 1814.0) (float-vector 40.0 -259.0 1814.0) (float-vector 40.0 -259.0 1834.0)))
         (instance face :init :vertices (list (float-vector -40.0 259.0 1814.0) (float-vector -40.0 -259.0 1814.0) (float-vector -40.0 -259.0 1834.0) (float-vector -40.0 259.0 1834.0)))
         (instance face :init :vertices (list (float-vector 40.0 259.0 1814.0) (float-vector 40.0 -259.0 1814.0) (float-vector -40.0 -259.0 1814.0) (float-vector -40.0 259.0 1814.0)))
         (instance face :init :vertices (list (float-vector 40.0 259.0 1834.0) (float-vector 40.0 -259.0 1834.0) (float-vector 40.0 -259.0 1814.0) (float-vector 40.0 259.0 1814.0)))
         (instance face :init :vertices (list (float-vector -40.0 259.0 1834.0) (float-vector -40.0 -259.0 1834.0) (float-vector 40.0 -259.0 1834.0) (float-vector 40.0 259.0 1834.0)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 562.0 -476.0 10.0) (float-vector 562.0 -456.0 10.0) (float-vector 622.0 -456.0 10.0) (float-vector 622.0 -476.0 10.0)))
         (instance face :init :vertices (list (float-vector 10.0 -249.0 1834.0) (float-vector 10.0 -269.0 1834.0) (float-vector 70.0 -269.0 1834.0) (float-vector 70.0 -249.0 1834.0)))
         (instance face :init :vertices (list (float-vector 562.0 -476.0 10.0) (float-vector 10.0 -269.0 1834.0) (float-vector 10.0 -249.0 1834.0) (float-vector 562.0 -456.0 10.0)))
         (instance face :init :vertices (list (float-vector 622.0 -476.0 10.0) (float-vector 70.0 -269.0 1834.0) (float-vector 10.0 -269.0 1834.0) (float-vector 562.0 -476.0 10.0)))
         (instance face :init :vertices (list (float-vector 622.0 -456.0 10.0) (float-vector 70.0 -249.0 1834.0) (float-vector 70.0 -269.0 1834.0) (float-vector 622.0 -476.0 10.0)))
         (instance face :init :vertices (list (float-vector 562.0 -456.0 10.0) (float-vector 10.0 -249.0 1834.0) (float-vector 70.0 -249.0 1834.0) (float-vector 622.0 -456.0 10.0)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 562.0 456.0 10.0) (float-vector 562.0 476.0 10.0) (float-vector 622.0 476.0 10.0) (float-vector 622.0 456.0 10.0)))
         (instance face :init :vertices (list (float-vector 10.0 269.0 1834.0) (float-vector 10.0 249.0 1834.0) (float-vector 70.0 249.0 1834.0) (float-vector 70.0 269.0 1834.0)))
         (instance face :init :vertices (list (float-vector 562.0 456.0 10.0) (float-vector 10.0 249.0 1834.0) (float-vector 10.0 269.0 1834.0) (float-vector 562.0 476.0 10.0)))
         (instance face :init :vertices (list (float-vector 622.0 456.0 10.0) (float-vector 70.0 249.0 1834.0) (float-vector 10.0 249.0 1834.0) (float-vector 562.0 456.0 10.0)))
         (instance face :init :vertices (list (float-vector 622.0 476.0 10.0) (float-vector 70.0 269.0 1834.0) (float-vector 70.0 249.0 1834.0) (float-vector 622.0 456.0 10.0)))
         (instance face :init :vertices (list (float-vector 562.0 476.0 10.0) (float-vector 10.0 269.0 1834.0) (float-vector 70.0 269.0 1834.0) (float-vector 622.0 476.0 10.0)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 470.0 431.5 314.0) (float-vector 530.0 431.5 314.0) (float-vector 531.0 431.5 295.0) (float-vector 480.0 431.5 278.0)))
         (instance face :init :vertices (list (float-vector 530.0 -431.5 314.0) (float-vector 470.0 -431.5 314.0) (float-vector 480.0 -431.5 278.0) (float-vector 531.0 -431.5 295.0)))
         (instance face :init :vertices (list (float-vector 470.0 431.5 314.0) (float-vector 470.0 -431.5 314.0) (float-vector 530.0 -431.5 314.0) (float-vector 530.0 431.5 314.0)))
         (instance face :init :vertices (list (float-vector 480.0 431.5 278.0) (float-vector 480.0 -431.5 278.0) (float-vector 470.0 -431.5 314.0) (float-vector 470.0 431.5 314.0)))
         (instance face :init :vertices (list (float-vector 531.0 431.5 295.0) (float-vector 531.0 -431.5 295.0) (float-vector 480.0 -431.5 278.0) (float-vector 480.0 431.5 278.0)))
         (instance face :init :vertices (list (float-vector 530.0 431.5 314.0) (float-vector 530.0 -431.5 314.0) (float-vector 531.0 -431.5 295.0) (float-vector 531.0 431.5 295.0)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 378.0 397.0 618.0) (float-vector 438.0 397.0 618.0) (float-vector 439.0 397.0 599.0) (float-vector 388.0 397.0 582.0)))
         (instance face :init :vertices (list (float-vector 438.0 -397.0 618.0) (float-vector 378.0 -397.0 618.0) (float-vector 388.0 -397.0 582.0) (float-vector 439.0 -397.0 599.0)))
         (instance face :init :vertices (list (float-vector 378.0 397.0 618.0) (float-vector 378.0 -397.0 618.0) (float-vector 438.0 -397.0 618.0) (float-vector 438.0 397.0 618.0)))
         (instance face :init :vertices (list (float-vector 388.0 397.0 582.0) (float-vector 388.0 -397.0 582.0) (float-vector 378.0 -397.0 618.0) (float-vector 378.0 397.0 618.0)))
         (instance face :init :vertices (list (float-vector 439.0 397.0 599.0) (float-vector 439.0 -397.0 599.0) (float-vector 388.0 -397.0 582.0) (float-vector 388.0 397.0 582.0)))
         (instance face :init :vertices (list (float-vector 438.0 397.0 618.0) (float-vector 438.0 -397.0 618.0) (float-vector 439.0 -397.0 599.0) (float-vector 439.0 397.0 599.0)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 286.0 362.5 922.0) (float-vector 346.0 362.5 922.0) (float-vector 347.0 362.5 903.0) (float-vector 296.0 362.5 886.0)))
         (instance face :init :vertices (list (float-vector 346.0 -362.5 922.0) (float-vector 286.0 -362.5 922.0) (float-vector 296.0 -362.5 886.0) (float-vector 347.0 -362.5 903.0)))
         (instance face :init :vertices (list (float-vector 286.0 362.5 922.0) (float-vector 286.0 -362.5 922.0) (float-vector 346.0 -362.5 922.0) (float-vector 346.0 362.5 922.0)))
         (instance face :init :vertices (list (float-vector 296.0 362.5 886.0) (float-vector 296.0 -362.5 886.0) (float-vector 286.0 -362.5 922.0) (float-vector 286.0 362.5 922.0)))
         (instance face :init :vertices (list (float-vector 347.0 362.5 903.0) (float-vector 347.0 -362.5 903.0) (float-vector 296.0 -362.5 886.0) (float-vector 296.0 362.5 886.0)))
         (instance face :init :vertices (list (float-vector 346.0 362.5 922.0) (float-vector 346.0 -362.5 922.0) (float-vector 347.0 -362.5 903.0) (float-vector 347.0 362.5 903.0)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 194.0 328.0 1226.0) (float-vector 254.0 328.0 1226.0) (float-vector 255.0 328.0 1207.0) (float-vector 204.0 328.0 1190.0)))
         (instance face :init :vertices (list (float-vector 254.0 -328.0 1226.0) (float-vector 194.0 -328.0 1226.0) (float-vector 204.0 -328.0 1190.0) (float-vector 255.0 -328.0 1207.0)))
         (instance face :init :vertices (list (float-vector 194.0 328.0 1226.0) (float-vector 194.0 -328.0 1226.0) (float-vector 254.0 -328.0 1226.0) (float-vector 254.0 328.0 1226.0)))
         (instance face :init :vertices (list (float-vector 204.0 328.0 1190.0) (float-vector 204.0 -328.0 1190.0) (float-vector 194.0 -328.0 1226.0) (float-vector 194.0 328.0 1226.0)))
         (instance face :init :vertices (list (float-vector 255.0 328.0 1207.0) (float-vector 255.0 -328.0 1207.0) (float-vector 204.0 -328.0 1190.0) (float-vector 204.0 328.0 1190.0)))
         (instance face :init :vertices (list (float-vector 254.0 328.0 1226.0) (float-vector 254.0 -328.0 1226.0) (float-vector 255.0 -328.0 1207.0) (float-vector 255.0 328.0 1207.0)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 102.0 293.5 1530.0) (float-vector 162.0 293.5 1530.0) (float-vector 163.0 293.5 1511.0) (float-vector 112.0 293.5 1494.0)))
         (instance face :init :vertices (list (float-vector 162.0 -293.5 1530.0) (float-vector 102.0 -293.5 1530.0) (float-vector 112.0 -293.5 1494.0) (float-vector 163.0 -293.5 1511.0)))
         (instance face :init :vertices (list (float-vector 102.0 293.5 1530.0) (float-vector 102.0 -293.5 1530.0) (float-vector 162.0 -293.5 1530.0) (float-vector 162.0 293.5 1530.0)))
         (instance face :init :vertices (list (float-vector 112.0 293.5 1494.0) (float-vector 112.0 -293.5 1494.0) (float-vector 102.0 -293.5 1530.0) (float-vector 102.0 293.5 1530.0)))
         (instance face :init :vertices (list (float-vector 163.0 293.5 1511.0) (float-vector 163.0 -293.5 1511.0) (float-vector 112.0 -293.5 1494.0) (float-vector 112.0 293.5 1494.0)))
         (instance face :init :vertices (list (float-vector 162.0 293.5 1530.0) (float-vector 162.0 -293.5 1530.0) (float-vector 163.0 -293.5 1511.0) (float-vector 163.0 293.5 1511.0)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 10.0 259.0 1834.0) (float-vector 70.0 259.0 1834.0) (float-vector 71.0 259.0 1815.0) (float-vector 20.0 259.0 1798.0)))
         (instance face :init :vertices (list (float-vector 70.0 -259.0 1834.0) (float-vector 10.0 -259.0 1834.0) (float-vector 20.0 -259.0 1798.0) (float-vector 71.0 -259.0 1815.0)))
         (instance face :init :vertices (list (float-vector 10.0 259.0 1834.0) (float-vector 10.0 -259.0 1834.0) (float-vector 70.0 -259.0 1834.0) (float-vector 70.0 259.0 1834.0)))
         (instance face :init :vertices (list (float-vector 20.0 259.0 1798.0) (float-vector 20.0 -259.0 1798.0) (float-vector 10.0 -259.0 1834.0) (float-vector 10.0 259.0 1834.0)))
         (instance face :init :vertices (list (float-vector 71.0 259.0 1815.0) (float-vector 71.0 -259.0 1815.0) (float-vector 20.0 -259.0 1798.0) (float-vector 20.0 259.0 1798.0)))
         (instance face :init :vertices (list (float-vector 70.0 259.0 1834.0) (float-vector 70.0 -259.0 1834.0) (float-vector 71.0 -259.0 1815.0) (float-vector 71.0 259.0 1815.0)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector -562.0 476.0 10.0) (float-vector -562.0 456.0 10.0) (float-vector -622.0 456.0 10.0) (float-vector -622.0 476.0 10.0)))
         (instance face :init :vertices (list (float-vector -10.0 249.0 1834.0) (float-vector -10.0 269.0 1834.0) (float-vector -70.0 269.0 1834.0) (float-vector -70.0 249.0 1834.0)))
         (instance face :init :vertices (list (float-vector -562.0 476.0 10.0) (float-vector -10.0 269.0 1834.0) (float-vector -10.0 249.0 1834.0) (float-vector -562.0 456.0 10.0)))
         (instance face :init :vertices (list (float-vector -622.0 476.0 10.0) (float-vector -70.0 269.0 1834.0) (float-vector -10.0 269.0 1834.0) (float-vector -562.0 476.0 10.0)))
         (instance face :init :vertices (list (float-vector -622.0 456.0 10.0) (float-vector -70.0 249.0 1834.0) (float-vector -70.0 269.0 1834.0) (float-vector -622.0 476.0 10.0)))
         (instance face :init :vertices (list (float-vector -562.0 456.0 10.0) (float-vector -10.0 249.0 1834.0) (float-vector -70.0 249.0 1834.0) (float-vector -622.0 456.0 10.0)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector -562.0 -456.0 10.0) (float-vector -562.0 -476.0 10.0) (float-vector -622.0 -476.0 10.0) (float-vector -622.0 -456.0 10.0)))
         (instance face :init :vertices (list (float-vector -10.0 -269.0 1834.0) (float-vector -10.0 -249.0 1834.0) (float-vector -70.0 -249.0 1834.0) (float-vector -70.0 -269.0 1834.0)))
         (instance face :init :vertices (list (float-vector -562.0 -456.0 10.0) (float-vector -10.0 -249.0 1834.0) (float-vector -10.0 -269.0 1834.0) (float-vector -562.0 -476.0 10.0)))
         (instance face :init :vertices (list (float-vector -622.0 -456.0 10.0) (float-vector -70.0 -249.0 1834.0) (float-vector -10.0 -249.0 1834.0) (float-vector -562.0 -456.0 10.0)))
         (instance face :init :vertices (list (float-vector -622.0 -476.0 10.0) (float-vector -70.0 -269.0 1834.0) (float-vector -70.0 -249.0 1834.0) (float-vector -622.0 -456.0 10.0)))
         (instance face :init :vertices (list (float-vector -562.0 -476.0 10.0) (float-vector -10.0 -269.0 1834.0) (float-vector -70.0 -269.0 1834.0) (float-vector -622.0 -476.0 10.0)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector -470.0 -431.5 314.0) (float-vector -530.0 -431.5 314.0) (float-vector -531.0 -431.5 295.0) (float-vector -480.0 -431.5 278.0)))
         (instance face :init :vertices (list (float-vector -530.0 431.5 314.0) (float-vector -470.0 431.5 314.0) (float-vector -480.0 431.5 278.0) (float-vector -531.0 431.5 295.0)))
         (instance face :init :vertices (list (float-vector -470.0 -431.5 314.0) (float-vector -470.0 431.5 314.0) (float-vector -530.0 431.5 314.0) (float-vector -530.0 -431.5 314.0)))
         (instance face :init :vertices (list (float-vector -480.0 -431.5 278.0) (float-vector -480.0 431.5 278.0) (float-vector -470.0 431.5 314.0) (float-vector -470.0 -431.5 314.0)))
         (instance face :init :vertices (list (float-vector -531.0 -431.5 295.0) (float-vector -531.0 431.5 295.0) (float-vector -480.0 431.5 278.0) (float-vector -480.0 -431.5 278.0)))
         (instance face :init :vertices (list (float-vector -530.0 -431.5 314.0) (float-vector -530.0 431.5 314.0) (float-vector -531.0 431.5 295.0) (float-vector -531.0 -431.5 295.0)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector -378.0 -397.0 618.0) (float-vector -438.0 -397.0 618.0) (float-vector -439.0 -397.0 599.0) (float-vector -388.0 -397.0 582.0)))
         (instance face :init :vertices (list (float-vector -438.0 397.0 618.0) (float-vector -378.0 397.0 618.0) (float-vector -388.0 397.0 582.0) (float-vector -439.0 397.0 599.0)))
         (instance face :init :vertices (list (float-vector -378.0 -397.0 618.0) (float-vector -378.0 397.0 618.0) (float-vector -438.0 397.0 618.0) (float-vector -438.0 -397.0 618.0)))
         (instance face :init :vertices (list (float-vector -388.0 -397.0 582.0) (float-vector -388.0 397.0 582.0) (float-vector -378.0 397.0 618.0) (float-vector -378.0 -397.0 618.0)))
         (instance face :init :vertices (list (float-vector -439.0 -397.0 599.0) (float-vector -439.0 397.0 599.0) (float-vector -388.0 397.0 582.0) (float-vector -388.0 -397.0 582.0)))
         (instance face :init :vertices (list (float-vector -438.0 -397.0 618.0) (float-vector -438.0 397.0 618.0) (float-vector -439.0 397.0 599.0) (float-vector -439.0 -397.0 599.0)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector -286.0 -362.5 922.0) (float-vector -346.0 -362.5 922.0) (float-vector -347.0 -362.5 903.0) (float-vector -296.0 -362.5 886.0)))
         (instance face :init :vertices (list (float-vector -346.0 362.5 922.0) (float-vector -286.0 362.5 922.0) (float-vector -296.0 362.5 886.0) (float-vector -347.0 362.5 903.0)))
         (instance face :init :vertices (list (float-vector -286.0 -362.5 922.0) (float-vector -286.0 362.5 922.0) (float-vector -346.0 362.5 922.0) (float-vector -346.0 -362.5 922.0)))
         (instance face :init :vertices (list (float-vector -296.0 -362.5 886.0) (float-vector -296.0 362.5 886.0) (float-vector -286.0 362.5 922.0) (float-vector -286.0 -362.5 922.0)))
         (instance face :init :vertices (list (float-vector -347.0 -362.5 903.0) (float-vector -347.0 362.5 903.0) (float-vector -296.0 362.5 886.0) (float-vector -296.0 -362.5 886.0)))
         (instance face :init :vertices (list (float-vector -346.0 -362.5 922.0) (float-vector -346.0 362.5 922.0) (float-vector -347.0 362.5 903.0) (float-vector -347.0 -362.5 903.0)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector -194.0 -328.0 1226.0) (float-vector -254.0 -328.0 1226.0) (float-vector -255.0 -328.0 1207.0) (float-vector -204.0 -328.0 1190.0)))
         (instance face :init :vertices (list (float-vector -254.0 328.0 1226.0) (float-vector -194.0 328.0 1226.0) (float-vector -204.0 328.0 1190.0) (float-vector -255.0 328.0 1207.0)))
         (instance face :init :vertices (list (float-vector -194.0 -328.0 1226.0) (float-vector -194.0 328.0 1226.0) (float-vector -254.0 328.0 1226.0) (float-vector -254.0 -328.0 1226.0)))
         (instance face :init :vertices (list (float-vector -204.0 -328.0 1190.0) (float-vector -204.0 328.0 1190.0) (float-vector -194.0 328.0 1226.0) (float-vector -194.0 -328.0 1226.0)))
         (instance face :init :vertices (list (float-vector -255.0 -328.0 1207.0) (float-vector -255.0 328.0 1207.0) (float-vector -204.0 328.0 1190.0) (float-vector -204.0 -328.0 1190.0)))
         (instance face :init :vertices (list (float-vector -254.0 -328.0 1226.0) (float-vector -254.0 328.0 1226.0) (float-vector -255.0 328.0 1207.0) (float-vector -255.0 -328.0 1207.0)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector -102.0 -293.5 1530.0) (float-vector -162.0 -293.5 1530.0) (float-vector -163.0 -293.5 1511.0) (float-vector -112.0 -293.5 1494.0)))
         (instance face :init :vertices (list (float-vector -162.0 293.5 1530.0) (float-vector -102.0 293.5 1530.0) (float-vector -112.0 293.5 1494.0) (float-vector -163.0 293.5 1511.0)))
         (instance face :init :vertices (list (float-vector -102.0 -293.5 1530.0) (float-vector -102.0 293.5 1530.0) (float-vector -162.0 293.5 1530.0) (float-vector -162.0 -293.5 1530.0)))
         (instance face :init :vertices (list (float-vector -112.0 -293.5 1494.0) (float-vector -112.0 293.5 1494.0) (float-vector -102.0 293.5 1530.0) (float-vector -102.0 -293.5 1530.0)))
         (instance face :init :vertices (list (float-vector -163.0 -293.5 1511.0) (float-vector -163.0 293.5 1511.0) (float-vector -112.0 293.5 1494.0) (float-vector -112.0 -293.5 1494.0)))
         (instance face :init :vertices (list (float-vector -162.0 -293.5 1530.0) (float-vector -162.0 293.5 1530.0) (float-vector -163.0 293.5 1511.0) (float-vector -163.0 -293.5 1511.0)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector -10.0 -259.0 1834.0) (float-vector -70.0 -259.0 1834.0) (float-vector -71.0 -259.0 1815.0) (float-vector -20.0 -259.0 1798.0)))
         (instance face :init :vertices (list (float-vector -70.0 259.0 1834.0) (float-vector -10.0 259.0 1834.0) (float-vector -20.0 259.0 1798.0) (float-vector -71.0 259.0 1815.0)))
         (instance face :init :vertices (list (float-vector -10.0 -259.0 1834.0) (float-vector -10.0 259.0 1834.0) (float-vector -70.0 259.0 1834.0) (float-vector -70.0 -259.0 1834.0)))
         (instance face :init :vertices (list (float-vector -20.0 -259.0 1798.0) (float-vector -20.0 259.0 1798.0) (float-vector -10.0 259.0 1834.0) (float-vector -10.0 -259.0 1834.0)))
         (instance face :init :vertices (list (float-vector -71.0 -259.0 1815.0) (float-vector -71.0 259.0 1815.0) (float-vector -20.0 259.0 1798.0) (float-vector -20.0 -259.0 1798.0)))
         (instance face :init :vertices (list (float-vector -70.0 -259.0 1834.0) (float-vector -70.0 259.0 1834.0) (float-vector -71.0 259.0 1815.0) (float-vector -71.0 -259.0 1815.0)))
       ))
       ))
     (dolist (b (cdr bc)) (send (car bc) :assoc b))
     (send (elt bc 0) :set-color :yellow)
     (send (elt bc 1) :set-color :yellow)
     (send (elt bc 2) :set-color :yellow)
     (send (elt bc 3) :set-color :yellow)
     (send (elt bc 4) :set-color :yellow)
     (send (elt bc 5) :set-color :yellow)
     (send (elt bc 6) :set-color :yellow)
     (send (elt bc 7) :set-color :yellow)
     (send (elt bc 8) :set-color :yellow)
     (send (elt bc 9) :set-color :yellow)
     (send (elt bc 10) :set-color :yellow)
     (send (elt bc 11) :set-color :yellow)
     (send (elt bc 12) :set-color :yellow)
     (send (elt bc 13) :set-color :yellow)
     (send (elt bc 14) :set-color :yellow)
     (send (elt bc 15) :set-color :yellow)
     (send (elt bc 16) :set-color :yellow)
     (setq blink0 (instance bodyset-link :init (make-cascoords) :bodies bc :name :root :weight 14300 :centroid (float-vector 0.0 0.0 0.0) :inertia-tensor #2f((1.0 0.0 0.0) (0.0 1.0 0.0) (0.0 0.0 1.0))))

     ;; definition of assoc
     (send self :assoc blink0)

     ;; definition of end-coords

     ;; definition of joint


     ;; init-ending 
     (setq links (list blink0))
     (setq joint-list (list))
     (send self :init-ending)
     (send self :move-to (make-coords :pos pos :rot rot))
     (send-all links :worldcoords)

     self))

  (:handle (&rest args) (forward-message-to-all (list ) args))
  (:attention (&rest args) (forward-message-to-all (list ) args))
  (:button (&rest args) (forward-message-to-all (list ) args))
  )

(defun picaladder (&rest args) (instance* picaladder-object :init args))
;; (format *error-output* "(instance picaladder-object :init) for generating model~%")
