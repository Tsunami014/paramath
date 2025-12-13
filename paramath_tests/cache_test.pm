//precision 5
//epsilon 1e-99
//simplify true
//dupe true

# same complex expression multiple times to test caching
//display
//ret (+ (* (sin (+ x y)) (cos (- x y))) 
       (/ (tan (* x y)) (+ (abs x) (abs y))))

//display
//ret (+ (* (sin (+ x y)) (cos (- x y))) 
       (/ (tan (* x y)) (+ (abs x) (abs y))))

//display
//ret (+ (* (sin (+ x y)) (cos (- x y))) 
       (/ (tan (* x y)) (+ (abs x) (abs y))))

# another complex repeated expression
//display
//ret (/ (+ (** x 3) (* 3 (** x 2) y) (* 3 x (** y 2)) (** y 3))
       (+ x y))

//display
//ret (/ (+ (** x 3) (* 3 (** x 2) y) (* 3 x (** y 2)) (** y 3))
       (+ x y))