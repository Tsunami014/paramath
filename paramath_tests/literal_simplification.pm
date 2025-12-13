//precision 5
//epsilon 1e-99
//dupe false

# test 1: simple arithmetic that should collapse
//simplify true
//display
//ret (+ 2 3)

# test 2: nested arithmetic
//simplify true
//display
//ret (* (+ 5 3) (- 10 2))

# test 3: trig with constants
//simplify true
//display
//ret (sin (* 3.14159 0.5))

# test 4: mixed variables and constants
//simplify true
//display
//ret (+ (* 2 3) (* x 1) (+ 0 y))

# test 5: DON'T simplify literals
//simplify false
//display
//ret (+ 2 3)

# test 6: complex expression with simplifiable parts
//simplify true
//display
//ret (+ (* (+ 1 1) x) (* y (- 5 2)))

# test 7: power operations
//simplify true
//display
//ret (** (+ 2 2) (- 3 1))