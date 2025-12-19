//alias TESTNUM A 
//alias CHECKSUM B 

//precision 0
//epsilon 1e-99
//simplify true
//dupe false

//global const_A 123456
//global len_A len(str(globals.const_A))

//store TESTNUM
//ret const_A

//store CHECKSUM
//ret 0

//repeat globals.len_A i
//local div_len 10 ** (globals.len_A - i - 1)
//local test_var str(globals.const_A)[i+1: ] or 0

//store CHECKSUM
target = nat(/ TESTNUM div_len)
difference = - target test_var
//ret + CHECKSUM difference
//endrepeat

//display
//ret - len_A CHECKSUM
