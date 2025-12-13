//precision 5
//epsilon 1e-99
//simplify true
//dupe false

# test 1: basic sympy simplification
//sympy true
//display
//ret (+ (* x y) (* y x))

# test 2: trig identities
//sympy true
//display
//ret (+ (** (sin x) 2) (** (cos x) 2))

# test 3: algebraic simplification
//sympy true
//display
//ret (* (+ x 1) (- x 1))

# test 4: cancel common factors
//sympy true
//display
//ret (/ (* x y z) (* x z))

# test 5: sympy off (baseline)
//sympy false
//display
//ret (+ (* x y) (* y x))

# test 6: complex rational expression
//sympy true
//display
//ret (/ (+ (* x x) (* 2 x) 1) (+ x 1))