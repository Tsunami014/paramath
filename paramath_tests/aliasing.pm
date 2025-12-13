//precision 5
//epsilon 1e-99
//simplify true
//dupe false

//variables p q r s t

//alias alpha p
//alias beta q
//alias gamma r

# test 1: basic alias usage
//display
//ret (+ alpha beta)

# test 2: mixed aliases and direct vars
//display
//ret (* gamma (+ s t))

# test 3: alias in complex expression
//display
//ret (/ (+ alpha beta) (- gamma alpha))

# test 4: all aliases
//display
//ret (+ (* alpha beta) (/ gamma alpha))