//precision 5
//epsilon 1e-99
//simplify true
//dupe false

//variables a b c d e f g h i j x y z

# test 1: deeply nested parentheses
//display
//ret (+ (+ (+ (+ (+ a b) c) d) e) f)

# test 2: all operations together
//display
//ret (+ (* a b) (/ c d) (- e f) (** g 2))

# test 3: epsilon in expression
//display
//ret (/ a (+ (abs a) ε))

# test 4: very long chain
//display
//ret (+ a (+ b (+ c (+ d (+ e (+ f (+ g (+ h (+ i j)))))))))

# test 5: mixed functions and ops
//display
//ret (+ (sin (cos (tan x))) (* (abs y) (arcsin z)))