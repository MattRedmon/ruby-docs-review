
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