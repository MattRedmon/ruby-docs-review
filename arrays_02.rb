
# ***PUBLIC CLASS METHODS***



# ***PUBLIC INSTANCE METHODS***

# & (and) method - set intersection
[1,2,3,5] & [3,2,1]   # => [1,3]
["a", "b", "b", "z"] & ["a", "b", "c"]  # => ["a", "b"]

# * (star or splat) method
[1,2,3] * 3  # => [1,2,3,1,2,3,1,2,3]
[1,2,3] * ","  # => "1,2,3"

# + (plus) method - concatenation
[1,2,3] + [4,5]  # => [1,2,3,4,5]
a = ['a', 'b', 'c']
c = a + ['d', 'e', 'f']
c  # => ['a', 'b', 'c', 'd', 'e', 'f']

# - (minus) method - array difference
[1,1,2,2,3,3,4,5] - [1,2,4]  # => [3,3,5]

# << (shovel) method -append, pushes objs into an array
[1,2] << "c" << "d" << [3,4]  # => [1,2,"c","d",[3,4]]

# <=> method - comparison
# returns an integer
# -1 if array less than other array
# 0 if array equal other array
# +1 if array greater than other array
["a", "a", "c"] <=> ["a", "b", "c"]  # => -1
[1,2,3,4,5,6]   <=> [1,2]            # => +1
[1,2]           <=> [1, :two]        # => nil

# == method -equality
["a", "c"]    == ["a", "c", 7]  # => false
["a", "c", 7] == ["a", "c", 7]  # => true

# [] method - element reference
a = ['a','b','c','d','e']
a[2] + a[0] + a[1]  # => "cab"
a[6]                # => nil
a[1,2]              # => ['b','c']
a[1..3]             # => ['b','c','d']
a[4..7]             # => ['e']
a[6..10]            # => nil
a[-3, 3]            # => ['c','d','e']   start at position -3 and take 3

# []= method - element assignment
a = Array.new
a[4] = "4";              # => [nil,nil,nil,nil,"4"]
a[0,3] = ['a', 'b','c']  # => ['a','b','c',nil, "4"]
a[1..2] = [1,2]          # => ['a', 1, 2, nil, "4"]

# assoc method - searches through array whose elements also arrays comparing obj
# with first element of each contained array
a = [["color","red","blue","green"], ["letters","a","b","c"], "foo"]
a.assoc("letters")  # => ["letter","a","b","c"] return the array in a that has 1st element "letter"
a.assoc("foo")  # => nil  returns nil as there is no array in a that has element "foo", only a string val

# at method - returns element at index
a = [1,2,3,4,5,6]
a.at(0)  # => 1
a.at(-1) # => 6

# bsearch method -uses binary search to find val in array
# elements must be sorted or monotone with respect to block
# two modes- find minimum and find any
ary = [0,4,7,10,12]
ary.bsearch { |x| x >= 4 }    # => 4
ary.bsearch { |x| x >= 6 }    # => 7
ary.bsearch { |x| x >= -1 }   # => 0
ary.bsearch { |x| x >= 100 }  # => nil

# clear method - removes all elements from an array
a = [1,2,3,4,5]
a.clear  # => []

# collect method  - non destructive version
# appears collect and map can be used interchangable - have same functionality
a = ['a','b', 'c', 'd']
a.collect { |x| x + "!" }       # => ['a!', 'b!', 'c!', 'd!']
a  # => ['a','b', 'c', 'd']

# collect! method  - destructive version
a = ['a','b', 'c', 'd']
a.collect! { |x| x + "!" }  # => ['a!', 'b!', 'c!', 'd!']
# array a is permanently changed in this version
a.map! { |x| x + "!" }       # => ['a!', 'b!', 'c!', 'd!']
# map! method gives same results as collect!

# combination method
# when invoked with block yields combinations
# order in which combinations yielded uncertain
a = [1,2,3,4]
a.combination(1).to_a  # => [[1],[2],[3],[4]]
a.combination(2).to_a  # => [[1,2],[1,3],[1,4],[2,3],[2,3],[3,4]]
a.combination(3).to_a  # => [[1,2,3],[1,2,4],[1,3,4],[2,3,4]]
a.combination(4).to_a  # => [[1,2,3,4]]

# compact and compact! method - removes nil elements
a = ['a', nil,'b', nil, 'c', nil]
a.compact  # => ['a','b','c']   NON DESTRUCTIVE VERSION
a.compact!  # DESTRUCTIVE VERSION

# concat method - appends elements
[1,2].concat( [3,4] )  # => [1,2,3,4]
['a'].concat( ['b'], ['c', 'd'] )  # => ['a','b','c','d']
a = [1,2,3,4]
a.concat( [5,6] )  # => [1,2,3,4,5,6]

# count method -returns # of elements
ary = [1,2,3,2]
ary.count  # => 4
ary.count(2)  # => 2  if arg given count # of elements -- we have two 2s
ary.count { |x| x%2 == 0 }  # 3  -- in affect how many even #s

# cycle method - calls given block for each element n times or forever if nil is given
# does nothing if non postive # given
# returns nil if loop finishes without interuption
a = ['a','b','c']
a.cycle { |x| puts x }     # prints: a,b,c,a,b,c,a,b,c ... forever
a.cycle(2) { |x| puts x }  # prints: a,b,c,a,b,c

# delete method
# deletes all items from self that are equal to obj
# returns last deleted items
a = ['a','b','b','b','c']
a.delete('b')  # => 'b'
a              # => ['a','c']
a.delete('z')  # => nil
a.delete('z') { "not found" }  # => "not found"

# delete_at method
# deletes element at specified index
a = ["ant", "bat", "cat", "dog"]
a.delete_at(2)  # => "cat"
a               # => ["ant", "bat", "dog"]
a.delete_at(99) # => nil

# delete_if method
# deletes every element for which block evals to true
# array is changed instantly every time block called, not when iteration is over
scores = [97, 42, 75]
scores.delete_if { |score| score < 80 }  # => [97]

# dig method- extracts nested value in an array
a = [[1,[2,3]]]  # an array within an array within another array
a.dig(0,1,1) # => 3
             # element at position 0 in outer array [........]
             # element at position 1 in middle array [1,[2,3]]
             # element at position 1 in inner array [2,3]  -- which is a three, our answer
a.dig(1,2,3) # => nil
[42, {foo: :bar}].dig(1, :foo)  # => :bar

# drop method - drops first n elements, returns rest of elements in an array
a = [1,2,3,4,5,0]
a.drop(3)  # => [4,5,0]

# drop_while method - drops elements up to but not including 1st element for which block returns nil/false
a = [1,2,3,4,5,0]
a.drop_while { |i| i < 3 }  # => [3,4,5,0]

# each method - calls given block for each element in self
a = ['a','b','c']
a.each { |x| print x, "--" }  # prints: "a -- b -- c --"

# each_index method - same as each but passes index of element instead of element itself
a = ['a','b','c']
a.each_index { |x| print x, "--" }  # prints:  "0 -- 1 -- 2 --"

# empty? method
[].empty?  # => false

# eql? method - returns true if self and other are same obj, or are both arrays with same concatenation

# fetch method
a = [11,22,33,44]
a.fetch(1)         # => 22
a.fetch(-1)        # => 44
a.fetch(4, "cat")  # => "cat"
# allows us to supply second argument (cat in our example) that is returned if the 1st arg
# referenced lies outside of the array bounds, allowing us to avoid throwing an error

# fill method
a = ['a','b','c','d']
a.fill('x')      # => ['x','x','x','x']
a.fill('z',2,2)  # => ['x','x','z','z']  start at position 2 and fill 2
a.fill('y',0..1) # => ['y','y','z','z']  fill positions 0 through 1
a.fill {|i| i*i} # => [1,2,4,9]  operating on index since using i


# find_index method
# appears only use index not find_index
a = ['a','b','c','d']
a.index('b')  # => 1
a.index('z')  # => nil
a.index { |x| x == 'b' }  # => 1

# first method
a = ['q','r','s','t']
a.first    # => 'q'
a.first(2) # => ['q','r']

# flatten method - NON DESTRUCTIVE VERSION
s = [1,2,3]
t = [4,5,6,[7,8]]
a = [s,t,9,10]  #  => [[1,2,3],[4,5,6,[7,8]],9,10]
a.flatten       #  => [1,2,3,4,5,6,7,8,9,10]

a = [1,2,[3,[4,5]]]
a.flatten(1)  # =>  [1,2,3,[4,5]]  with optional level arg of 1 only one level off multi level array is flattened

# flatten! method  - DESTRUCTIVE VERSION
a = [1,2,[3,[4,5]]]
a.flatten!   # => [1,2,3,4,5]
a.flatten!   # => nil   -- returns nil because line before already permanently flattened array
a            # => [1,2,3,4,5]   -- flatten!  is DESTRUCTIVE

# frozen? method
# return true if array is frozen

# hash method - compute a hash for for this array
# two arrays with the same content will have the same hash code and will compare using eql?

# include? method - returns true if given obj is present in self
a = ['a','b','c','d']
a.include('b')  # => true
a.include('z')  # => false

# index method - returns index of first obj in array
a = ['a','b','c','d']
a.index('b')            # => 1
a.index('z')            # => nil
a.index {|x| x == 'b'}  # => 1

# initialize_copy   --- see replace method

# insert method - inserts given values before the element with the given index
a = ['a','b','c','d']
a.insert(2,99)       # => ['a','b',99,'c','d']  inserts 99 at postion 2
a.insert(-2,1,2,3)   # => ['a','b',99,'c',1,2,3,'d']   inserts # 1,2,3 at position -2

# inspect  --> to_s method
# to_s method is listed as alias for inspect method
['a','b','c'].to_s   # => "[\"a\", \"b\", \"c\"]"   back slashes escaping the double quotes

# join method
['a','b','c','d'].join  # => "abcd"
['a','b','c','d'].join("-")  # => "a-b-c-d"

# keep_if method
a = ['a','b','c','d','e','f']
a.keep_if { |v| v =~ /[aeiou]/ }  # => ['a','e']

# last method
a = ['w','x','y','z']
a.last     # => "z"
a.last(2)  # => ['y','z']

# length method
[1,2,3,4,5].length  # => 5
[].length           # => 0

# map method - non Destructive version
# map and collect can be used interchangably
a = ['a','b','c','d']
a.collect { |x| x + "!" }  # => ['a!', 'b!', 'c!', 'd!']
a.map.with_index { |x,i| x * i }  # => ['', 'b', 'cc', 'ddd']  -- multiplying each element by its index

# map! and collect! methods - DESTRUCTIVE version of above

# max method - returns obj in array with the maximum value
a = ["albatross", "dog", "horse"]
a.max     # => "horse"
a.max { |a,b| a.length <=> b.length } # => "albatross"  -- code gives longest word
a.max(2)  # => ["horse", "dog"]
a.max(2) { |a,b| a.length <=> b.length } # => ["albatross", "horse"] -- longest word, 2nd longest word


# min method - returns obj with the minimum value
a = ["albatross", "dog", "horse"]
a.min  # => "albatross"
a.min { |a,b| a.length <=> b.length }  # => "dog" --  shortest word
a.min(2) # => ["albatross", "dog"]
a.max(2) { |a,b| a.length <=> b.length }  # => ["dog", "horse"] -- shortest and 2nd shortest word

# pack method -- see documentation- extensive explanation

# permutation method
a = [1,2,3]
a.permutation.to_a     # => [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]+
a.permutation(1).to_a  # => [[1],[2],[3]]
a.permutation(2).to_a  # => [[1,2],[1,3],[2,1],[2,3],[3,1],[3,2]]
a.permutation(3).to_a  # => [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]

# pop method - removes last element from itself and returns it, nil if empty array
a = ['a','b','c','d']
a.pop    # => 'd'    # this is a DESTRUCTIVE method
a.pop(2) # => ['b', 'c']
a        # => ['a']

# product method - returns array of all combos of elements of arrays
[1,2,3].product([4,5])      # => [[1,4],[1,5],[2,4],[2,5],[3,4],[3,5]]
[1,2].product([1,2])        # => [[1,1],[1,2],[2,1],[2,2]]
[1,2].product([3,4],[5,6])  # => [[1,3,5],[1,3,6],[1,4,5],[1,4,6],
                            #    [2,3,5],[2,3,6],[2,4,5],[2,4,6]]
[1,2].product()             # => [[1],[2]]
[1,2].product([])           # => []

# push method - append to end of array
a = ['a','b','c']
a.push('d','e','f')      # => a = ['a','b','c','d','e','f']
[1,2,3].push(4).push(5)  # => [1,2,3,4,5]

# rassoc method - searches through array whose elements are also arrays
a = [ [ 1, "one"], [2, "two"], [3, "three"], ["ii", "two"] ]
a.rassco("two")  # => [2,"two"]
a.rassco("four") # => nil

# reject method -- see also delete_if method
# deletes every element of self for which the block evaluates true

# repeated_combination method
# when invoked with a block yields all repeated combos of lenght n of elements from the array
# no guarantees of order
a = [1,2,3]
a.repeated_combination(1).to_a  # => [[1],[2],[3]]
a.repeated_combination(2).to_a  # => [[1,1],[1,2],[1,3],[2,2],[2,3],[3,3]]
a.repeated_combination(3).to_a  # => [[1,1,1],[1,1,2],[1,1,3],[1,2,2],[1,2,3],
                                #    [1,3,3],[2,2,2],[2,2,3],[2,3,3],[3,3,3]]

# repeated_permutation method
# when invoked with a block, yield all repeated permutations of length n of elements of array
# no guarantees of order
a = [1,2]
a.repeated_permutation(1).to_a  # => [[1], [2]]
a.repeated_permutation(2).to_a  # => [[1,1],[1,2],[2,1],[2,2]]
a.repeated_permutation(3).to_a  # => [[1,1,1],[1,1,2],[1,2,1],[1,2,2],
                                #    [2,1,1],[2,1,2],[2,2,1],[2,2,2]]

# replace method - this is a DESTRUCTIVE method
# replaces contents of self with contents of other array
a = ['a','b','c','d']
a.replace([ 'x', 'y', 'x' ])  # => [ 'x', 'y', 'x' ]
a                             # => [ 'x', 'y', 'x' ]

# reverse method - reverse array - Non Destructive version
['a','b','c'].reverse  # => ['c','b','a']
a                      # => ['a','b','c']

# reverse! method - DESTRUCTIVE VERSION
a = ['a','b','c']
a.reverse!  # => ['c','b','a']
a           # => ['c','b','a']

# reverse_each method
# same as each but traverses self in reverse order
a = ['a','b','c']
a.reverse_each { |x| print x, " " }  # prints: c b a