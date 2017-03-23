

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

# rationalize
# returns the value as a rational

# remainder
# remainder(numberic) -> real
# returns the remainder after dividing big by numeric
x.remainder(y)  # => mean x-y* (x/y).truncate
5.remainder(3)  # => 2
-5.remainder(3) # => -2

# round
# round([ndigits]) -> integer or float
# rounds int to a given precision in decimal digits, default 0 digits
1.round       # => 1
1.round(2)    # => 1.0
15.round(-1)  # => 20

# size
# size -> int
# returns the number of bytes in the machine representation of fix
1.size              # => 4
-1.size             # => 4
2147483647.size     # => 4
(256**10 - 1).size  # => 12
(256**20 - 1).size  # => 20
(256**40 - 1).size  # => 40

# succ
# succ -> integer
# returns the Integer equal to int + 1
1.next      # => 2
(-1).next   # => 0
1.succ      # => 2
(-1).succ   # => 0

# times
# times { |i| block }
# iterates the given block int times, passing in values from zero to int -1
5.times do |i|
  pring i, " "
end
# => 0 1 2 3 4

# to_f
# converts int to a Float, if int doesn't fit in Float, result is infinity

# to_i
# as int is already an Integer,these methods simply return the receiver
# see all to_int

# to_r
# returns value as a rational
1.to_r         # => (1/1)
(1<<64).to_r   # => (18446744073709551616/1)

# to_s
# returns a string containing the representation of int radix base ( 2 to 36 )
12345.to_s        # => "12345"
12345.to_s(2)     # => "11000000111001"
12345.to_s(8)     # => "30071"
12345.to_s(10)    # => "12345"
12345.to_s(16)    # => "3039"
12345.to_s(36)    # => "9ix"

# truncate
# truncate([ndigits]) -> int or float
# returns the smallest number than or equal to int in dec digits, default is zero
1.truncate      # => 1
1.truncate(2)   # => 1.0
15.truncate(-1) # => 10

# upto
# upto(limit) { |i| block }
# iterates given block, passing in integer values from int up to and including limit
5.upto(10) { |i| print i, " " }
# => 5 6 7 8 9 10

# integer | integer
# bitwise OR

# ~integer
# One's complement: returns a number where each bit is flipped











