//precision 5
//epsilon 1e-99
//simplify true
//dupe false

# define some functions to test
//function square ($x) (* $x $x)
//function add3 ($a $b $c) (+ $a (+ $b $c))
//function nested ($x) (square (+ $x 1))

# test 1: basic function call
//display
//ret (square 7)

# test 2: function composition
//display
//ret (nested 4)

# test 3: function with multiple params
//display
//ret (add3 1 2 3)

# test 4: functions calling other functions
//function combo ($x $y) (+ (square $x) (square $y))
//display
//ret (combo 3 4)

# test 5: nested function calls
//display
//ret (add3 (square 2) (square 3) (square 4))