//precision 5
//epsilon 1e-99
//simplify true
//dupe false

# test 1: multiplication identities
//display
//ret (* x 1)

# test 2: multiplication by zero
//display
//ret (* (* a b) 0)

# test 3: addition identity
//display
//ret (+ x 0)

# test 4: subtraction identity
//display
//ret (- x 0)

# test 5: x - x = 0
//display
//ret (- (* a b) (* a b))

# test 6: x / x = 1
//display
//ret (/ (+ a b) (+ a b))

# test 7: power identities
//display
//ret (** x 1)

# test 8: power by zero
//display
//ret (** (+ a b c) 0)

# test 9: x * x = x^2
//display
//ret (* (sin x) (sin x))

# test 10: a + a = 2*a
//display
//ret (+ (cos y) (cos y))

# test 11: flattening nested same operations
//display
//ret (+ (+ a b) (+ c d))

# test 12: combining like terms in multiplication
//display
//ret (* (* x y) (* y z))