

# CREATING ARRAYS-
# creating array with literal constructor
ary = [1, "two", 3.0]

# creating array explicitly
ary = Array.new     # => [] empty array
Array.new(3)        # => [nil,nil,nil] array with 3 slots
Array.new(3, true)  # => [true,true,true]

# to create array with separate objs a block can be passed instead
# this method is safe to use with mutable objs: hashes, strings, other arrays
Array.new(4) { Hash.new }  # => [ {}, {}, {}, {} ]

# a quick way to build multi-dimensional arrays
empty_table = Array.new(3) { Array.new(3) }  # => [ [nil,nil,nil], [nil,nil,nil], [nil,nil,nil] ]

# array can also be created using the Array() method, provided by KERNAL object
Array( {:a => "a", :b => "b"} )  # => [[:a, "a"], [:b, "b"]]




# ACCESSING ELEMENTS-
arr = [1,2,3,4,5,6]
arr[2]     # => 3
arr[100]   # => nil
arr[-3]    # => 4 .....  -1 is last element, -2 2nd to last .. etc
arr[2,3]   # => [3,4,5]  start at position 2 and take 3
arr[1..4]  # => [2,3,4,5]  start at postion 1 and include up to and including position 4
arr[1..-3] # => [2,3,4]  start at position 1 include through position -3, third from last

arr.at(0)  # => 1

# fetch can be used to provide default value if indices outside of array bounds
arr.fetch(100)  # => IndexError
arr.fetch(100, "oops")  # =>  "oops"

# first and last methods
arr.first  # => 1
arr.last  # => 6

# to return 1st n elements use take method
arr.take(3)  # => [1,2,3]

# drop method does opposite of take by returning the elements after n elements have been dropped
arr.drop(3)  # => [4,5,6]  drops 1,2,3 leaving 4,5,6 in array




# OBTAINING INFO ABOUT AN ARRAYS
# arrays keep track of own length- can use length, count, size methods to get # of elements
arr = [1,2,3,4,5,6]
arr.length  # => 6
arr.count  # => 6

# check whether array contains any elements at all
arr.empty?  # => false

# to check if particular item in array
arr.include?(7)  # => false




# ADDING ITEMS TO ARRAYS
arr = [1,2,3,4]
arr.push(5)  # => [1,2,3,4,5]
arr << 6  # => [1,2,3,4,5,6]

# unshift method adds item to beginning of array
arr.unshift(0)  # => [0,1,2,3,4,5,6]

# insert method can add new element to any position
arr.insert(3, "apple")  # => [0,1,2,"apple",3,4,5,6]

# can use insert to add multiple values at once
arr.insert(3, "orange", "pear", "grapefruit")  # => [0,1,2,"orange","pear","grapefruit","apple",3,4,5,6]
# notice above that insert was done a position 3 again so "apple" from 1st insert pushed farther down




# REMOVING ITEMS FROM AN ARRAY
# pop method removes last element in array and returns it
arr = [1,2,3,4,5,6]
arr.pop  # => 6  THIS IS A DESTRUCTIVE METHOD
arr  # => [1,2,3,4,5]

# to retrieve and remove at same time use shift method
arr.shift  # => 1  THIS IS A DESTRUCTIVE METHOD
arr  # => [2,3,4,5]

# use delete_at method to delete item at particular index
arr = [2,3,4,5]
arr.delete_at(2)  # => 4
arr  # => [2,3,5]

# use delete method to delete element anywhere in array
arr = [1,2,2,3]
arr.delete(2)  # => 2
arr  # => [1,3]

# use compact or compact! methods to remove nil vals from array
arr = ["foo", 0, nil, "bar", 7, "baz", nil]
arr.compact  # => ["foo", 0, "bar", 7, "baz"]  THIS VERSION NOT DESTRUCTIVE
#  after compact original array will not be changed
arr.compact!  # THIS VERSION IS DESTRUCTIVE
# compact! permanently alters the original array

# use uniq and uniq! methods to remove duplicates
arr = [ 2,5,6,556,6,6,8,9,0,123,556]
arr.uniq  # => [2,3,6,556,8,9,0,123]  THIS VERSION NOT DESTRUCTIVE
arr.uniq!  # THIS VERSION IS DESTRUCTIVE, original array permanently changed




# ITERATING OVER ARRAYS-
arr = [1,2,3,4,5]
arr.each { |a| print a -= 10, " " }  # prints: -9 -8 -7 -6 -5
# original array is unchanged

# use reverse_each to iterate over array in reverse order
arr = [1,2,3,4,5]
arr.reverse_each { |num| puts num }  # prints: 5 4 3 2 1

# map and map! methods create new array based on original
# with values modified by the supplied block
arr.map { |a| 2*a }  # => [2,4,6,8,10]  THIS VERSION NOT DESTRUCTIVE
arr  # => [1,2,3,4,5] original array is unchanged
arr.map! { |a| a**2 }  # => [1,4,9,16,25]  THIS VERSION IS DESTRUCTIVE
arr  # => [1,4,9,16,25]




# SELECTING ITEMS FROM AN ARRAY
# Non Destructive Selection
arr = [1,2,3,4,5,6]
arr.select { |a| a > 3 }  # => [4,5,6]
arr.reject { |a| a < 3 }  # => [3,4,5,6]
arr.drop_while { |a| a < 4 }  # => [4,5,6]
arr  # => [1,2,3,4,5,6]   array after is same as array before

# Destructive Selection
arr.select!  # => [4,5,6]  THIS IS ALSO VALUE OF ORIGIANL ARRAY
arr.reject!  # => [3,4,5,6]  THESE ARE DESTRUCTIVE VERSION OF METHODS ABOVE

arr = [1,2,3,4,5,6]
arr.delete_if { |a| a < 4 }  # => [4,5,6]
arr  # => [4,5,6]

arr = [1,2,3,4,5,6]
arr.keep_if { |a| a < 4 }  # => [1,2,3]
arr  # => [1,2,3]


