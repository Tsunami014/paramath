//precision 5
//epsilon 1e-99

//simplify true
//dupe false

# test 1: basic lambda application
//display
//ret ((lambda ($x) (* $x $x)) 5)

# test 2: nested lambda
//display
//ret ((lambda ($x) ((lambda ($y) (+ $x $y)) 3)) 7)

# test 3: lambda with multiple params
//display
//ret ((lambda ($a $b) (/ (+ $a $b) 2)) 10 20)

# test 4: lambda in arithmetic
//display
//ret (+ ((lambda ($x) (* $x 2)) 5) 3)

# test 5: lambda with complex expression
//display
//ret ((lambda ($x $y $z) (+ (* $x $y) (/ $z 2))) 2 3 8)

# test 6: lambda that calls another lambda
//display
//ret ((lambda ($f $x) ($f $x)) (lambda ($n) (* $n $n)) 4)

# test 7: lambda with nested operations
//display
//ret ((lambda ($x) (** (+ $x 1) (- $x 1))) 5)

# test 8: lambda using epsilon
//display
//ret ((lambda ($x) (/ $x (+ (abs $x) ε))) 42)