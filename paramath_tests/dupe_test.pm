//precision 5
//epsilon 1e-99
//simplify true
//dupe true -10

# test 1: obvious duplication - same subexpression 3+ times
//display
//ret (+ (* (+ a b) (+ a b)) (* (+ a b) (+ a b)))

# test 2: nested duplication hell
//display
//ret (+ (* (sin (+ x 1)) (cos (+ x 1))) 
       (/ (sin (+ x 1)) (cos (+ x 1))))

# test 3: deeply nested identical subexpressions
//display
//ret (+ (* (+ (* a b) (* c d)) (+ (* a b) (* c d)))
       (- (+ (* a b) (* c d)) (+ (* a b) (* c d))))

# test 4: same expression at different depths
//display
//ret (+ (+ (+ x y) (+ x y)) 
       (* (+ x y) (+ (+ x y) (+ x y))))

# test 5: minimum savings threshold test (should extract)
//dupe true 5
//display
//ret (+ (* a b c d e f) (* a b c d e f))

# test 6: minimum savings threshold test (shouldn't extract)
//dupe true 20
//display  
//ret (+ (* a b) (* a b))

# test 7: chained duplicates - extract multiple levels
//dupe true -10
//display
//ret (+ (* (+ (sin x) (cos y)) (+ (sin x) (cos y)))
       (* (+ (sin x) (cos y)) (+ (sin x) (cos y)))
       (* (+ (sin x) (cos y)) (+ (sin x) (cos y))))