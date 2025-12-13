//precision 5
//epsilon 1e-99
//simplify true
//dupe false

//global base 10

# test 1: nested repeats
//repeat 3 i
//repeat 2 j
//store A
//ret (+ (* i 10) j)
//endrepeat
//endrepeat

# test 2: repeat with complex local calculations
//repeat 5 n
//local squared (* n n)
//local cubed (* squared n)
//store B
//ret (+ cubed (/ squared 2))
//endrepeat

# test 3: repeat with conditional-like behavior
//repeat 10 k
//local is_even (/ (+ (mod k 2) 1) 2)
//store C
//ret (* k is_even)
//endrepeat

# test 4: repeat using globals
//repeat base i
//local scaled (* i base)
//store D
//ret (/ scaled 2)
//endrepeat

# test 5: deeply nested repeats with locals
//repeat 2 i
//local outer_val (* i 100)
//repeat 3 j
//local inner_val (+ outer_val (* j 10))
//repeat 2 k
//store E
//ret (+ inner_val k)
//endrepeat
//endrepeat
//endrepeat