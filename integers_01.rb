

# PUBLIC CLASS METHODS


# %
# modulo

# &
# integer & integer - bitwise and

# *
# int * numeric
# star or splat operator - performs multiplication
# class of resulting ojb depends on the class of numeric

# **
# interger ** numeric
# raises integer to power of numeric

# +
# int + numeric
# performs addition
# class of resulting obj depends on class of numeric

# -
# int - numeric
# performs subtraction
# class of resulting obj depends on class of numeric

# /
# int / numeric
# performs division
# class of resulting obj depends on class of numeric

# <
# int < real
# returns true if value of int is less than that of real

# <<
# int << count
# shifts int left count positions, or right if count is negative

# <=
# int <= real
# returns true if the value of int is less than or equal to that of real

# <=>
# # int <=> numeric
# comparison -- returns -1, 0, 1 or nil depending on
# whether int is less than, equal to, or greater than numeric
# nil is returned if two values are incomparable

# ==
# int == other
# return true if int equals other numerically,

# >
# int > real
# returns true if the value of int in greater than that of real

# >=
# int >= real
# returns true if the value of int is greater than or equal to that of real

# >>
# int >> count
# shifts int right count positions, or left if count is negative

# int[n] -> 0,1
# bit reference - returns the +n+th bit in the binary representation of int,
# where int[0] is the least significatn bit

# ^
# integer ^ integer
# bitwise exclusive OR

# abs
# returns absolute value of int
-12345.abs    # => 12345
12345.abs     # => 12345

# bit_length
# returns the number of bit of the value int
0.bit_length     # => 0
1.bit_length     # => 1
0xff.bit_length  # => 8

# ceil
# ceil([ndigits]) -> integer or float
# returns the smallest number than or equal to int in decimal digitis
1.ceil      # => 1
1.ceil(2)   # => 1.0
15.ceil(-1) # => 20

# chr
# chr([encoding]) -> string
# returns a string containing the char represented by the int's value according to encoding
65.char       # => "A"
230.char      #  => "\346"
255.char(Encoding::UTF_8)  # => "\303\207"

# coerce
# coerce(numeric) -> array
# returns an array with both a numerica and a big represented as Bignum objs
# acheived by converting numerica to Bignum

# denominator -> 1
# returns 1

# digits
# digits -> int
# digits(base) -> [int]
# returns the array including the digits extracted by place-value notation
12345.digits       # => [5,4,3,2,1]
12345.digits(7)    # => [4,6,6,0,5]
12345.digits(100)  # => [45,23,1]

# div
# div(numeric) -> integer
# performs integer division: returns int result by diving int by numeric

# divmod(numeric) -> array
# see Numeric divmod

# downto
# downto(limit)
# iterates the given block, passing decreasing values from int down to and including limit
5.downto(1) { |n| print n, ".. " }    # => "5.. 4.. 3.. 2.. 1.."

# even?
# returns true if int is an even number

# fdiv
# fdiv(numeric) -> float
# returns floating point result of dividing fix by numeric
654321.fdiv(13731)   # => 47.6528293642124

# floor
# floor([ndigit]) -> integer or float
# returns largest number less than or equal to int in decimal digits
# returns floating point num whe ndigits is positive, self for zero, and floor down for negative
1.floor       # => 1
1.floor(2)    # => 1.0
15.floor(-1)  # => 10

# gcdlcm   (?? greatest common demonimator, least common multiple ??)
# gcdlcm(int2) -> array
# returns an array
2.gcdlcm(2)      # => [2,2]
3.gcdlcm(-7)     # => [1,21]

# integer?
# since int is always an integer, this always returns true

# lcm
# returns the least common multiple, always positive
2.lcm(2)     # => 2
3.lcm(-7)    # => 21

# magnitude
# returns the absolute value of int
# see abs

# modulo(other) -> real
# returns int modulo other
# see Numeric divmod

# next
# returns the Integer equal to int + 1
1.next    # => 2
(-1).next # => 0
1.succ    # => 2
(-1).succ # => 0

# odd
# returns true if int is an odd number

# ord
# returns the int itself
?a.ord  # => 97

# pred
# returns the Integer equal to int - 1
1.pred    # => 0
(-1).pred # => -2













