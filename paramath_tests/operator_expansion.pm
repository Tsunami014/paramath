//precision 5
//epsilon 1e-99
//simplify true
//dupe false

# test 1: equality check
//display
//ret (== a b)

# test 2: greater than
//display
//ret (> a b)

# test 3: less than or equal
//display
//ret (<= a b)

# test 4: logical not
//display
//ret (! (> a b))

# test 5: if-then-else
//display
//ret (if (> a b) a b)

# test 6: max function
//display
//ret (max a b)

# test 7: min function
//display
//ret (min (+ x 1) (- y 2))

# test 8: sign function
//display
//ret (sign (- a b))

# test 9: modulo
//display
//ret (mod a 10)

# test 10: fractional part
//display
//ret (frac x)

# test 11: natural number rounding
//display
//ret (nat (+ x 0.5))

# test 12: nested conditionals
//display
//ret (if (> a 0) (if (> b 0) 1 2) 3)