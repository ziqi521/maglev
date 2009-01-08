# Tests the following:
#    Instantiation
#    Intersection
#    Repeat
#    Plus
#    Minus
#    Append
#    Compare
#    Equal
#    Index
#    Slice
#    Assign
#    Assoc
#    At
#    Collect
#    Map
#    Compact
#    Concat
#    Delete
#    DeleteAt
#    Empty
#    Eql
#    Fetch
#    Fill
#    First
#    Flatten
#    Include
#    Replace
#    Insert
#    Inspect
#    Join
#    Last
#    Length
#    Nitems
#    Pack
#    Pop
#    Push
#    Rassoc
#    Reject
#    Reverse
#    Select
#    Shift
#    Size
#    Sort
#    ToString
#    Transpose
#    Uniq
#    Unshift

# Class definition for array tests

def trace(linenum)
  # puts 'line ' + linenum.to_s
end

class ArrayTest
  # Expected value: [100, 200, 300]
  def new1
    arr = Array.[](100, 200, 300)
    if arr != [100, 200, 300]
      raise 'ERROR'
    end
  end

  def new2
    arr = [100, 200]
    unless arr.length == 2 ; raise 'err'; end
    unless arr[0] == 100 ; raise 'err'; end
    unless arr[1] == 200 ; raise 'err'; end
  end

  # Expected value: [100, 200, 300]
  def new3
    arr = [100, 200, 300]
    unless arr.length == 3 ; raise 'err'; end
    unless arr[0] == 100 ; raise 'err'; end
    unless arr[1] == 200 ; raise 'err'; end
    unless arr[2] == 300 ; raise 'err'; end
  end

  # Expected value: [100]
  def intersection
    arr1 = [100, 200, 300]
    arr2 = [100, 400, 500]
    arr3 = arr1 & arr2
    if arr3 != [100]
      raise 'ERROR'
    end
  end

  # Expected value: [1, 2, 3, 1, 2, 3, 1, 2, 3]
  def repeat
    arr = [1, 2, 3] * 3
    if arr != [1, 2, 3, 1, 2, 3, 1, 2, 3]
      raise 'ERROR'
    end
  end

  # Expected value: [1, 2, 3, 4, 5]
  def plus
    arr = [1, 2, 3] + [4, 5]
    if arr != [1, 2, 3, 4, 5]
      raise 'ERROR'
    end
  end

  # Expected value: [1, 4, 5]
  def minus
    arr = [1, 2, 3, 4, 5] - [2, 3]
    if arr != [1, 4, 5]
      raise 'ERROR'
    end
  end

  # Expected value: [1, 2, 3, 4, 5]
  def append
    arr = [1, 2, 3] << 4 << 5
    if arr != [1, 2, 3, 4, 5]
      raise 'ERROR'
    end   
  end

  # Expected value: 0
  def compare1
    arr1 = [1, 2, 3, 4]
    arr2 = [1, 2, 3, 4]
    res = arr1 <=> arr2
    if res != 0
      raise 'ERROR'
    end    
  end

  # Expected value: 1
  def compare2
    arr1 = [1, 2, 3, 4]
    arr2 = [1, 2, 3, 3]
    res = arr1 <=> arr2
    if res == 0
      raise 'ERROR'
    end
  end

  # Expected value: -1
  def compare3
    arr1 = [1, 2, 3, 4]
    arr2 = [1, 2, 3, 3]
    res = arr2 <=> arr1
    if res == 0
      raise 'ERROR'
    end   
  end

  # Expected value: true
  def equal1
    arr1 = [1, 2, 3, 4]
    arr2 = [1, 2, 3, 4]
    res = arr2 == arr1
    if !res
      raise 'ERROR'
    end
  end

  # Expected value: false
  def equal2
    arr1 = [1, 2, 3, 4]
    arr2 = [1, 2, 3, 3]
    res = arr2 == arr1
    if res
      raise 'ERROR'
    end
  end

  # Expected value: 2
  def index1
    arr = [1, 2, 3, 4]
    if arr[1] != 2
      raise 'ERROR'
    end
  end

  # Expected value: 0
  def index2
    arr = [1, 2, 3, 4, 5, 6]
    expect = [1, 2]
    result = arr[0,2]
    res = result <=> expect
    if res != 0
      raise 'ERROR'
    end
  end

  # Expected value: 0
  def index3
    arr = [1, 2, 3, 4, 5, 6]
    expect = [2, 3, 4]
    result = arr[1..3]
    res = result <=> expect
    if res != 0
      raise 'ERROR'
    end
  end

  # Expected value: 2
  def slice1
    arr = [1, 2, 3, 4]
    res = arr.slice(1)
    if res != 2
      raise 'ERROR'
    end
  end

  # Expected value: 0
  def slice2
    arr = [1, 2, 3, 4, 5, 6]
    expect = [1, 2]
    result = arr.slice(0,2)
    res = result <=> expect
    if res != 0
      raise 'ERROR'
    end
  end

  # Expected value: 0
  def slice3
    arr = [1, 2, 3, 4, 5, 6]
    expect = [2, 3, 4]
    result = arr.slice(1..3)
    res = result <=> expect
    if res != 0
      raise 'ERROR'
    end
  end

  # Expected value: 'abc'
  def assign1
    arr = Array.new
    arr[3] = 'abc'
    res = arr[3]
    if res != 'abc'
      raise 'ERROR'
    end
  end

  # Expected value: ['abc', 'def', 'ghi']
  def assign2
    arr1 = Array.new
    arr2 = ['abc', 'def', 'ghi']
    arr1[0,3] = arr2
    if arr1 != ['abc', 'def', 'ghi']
      raise 'ERROR'
    end
  end

  # Expected value: ['abc', 'def', 'ghi']
  def assign3
    arr1 = Array.new
    arr2 = ['abc', 'def', 'ghi']
    arr1[0..2] = arr2
    if arr1 != ['abc', 'def', 'ghi']
      raise 'ERROR'
    end
  end

  # Expected value: ['jkl', 'mno', pqr']
  def assoc
    arr1 = ['abc', 'def', 'ghi']
    arr2 = ['jkl', 'mno', 'pqr']
    arr3 = ['stu', 'vwx', 'yza']
    bigarr = [arr1, arr2, arr3]
    result = bigarr.assoc('jkl')
    if result != ['jkl', 'mno', 'pqr']
      raise 'ERROR'
    end
  end

  # Expected value: ['abc', 'def', 'ghi']
  def assign3
    arr1 = Array.new
    arr2 = ['abc', 'def', 'ghi']
    arr1[0..2] = arr2
    if arr1 != ['abc', 'def', 'ghi']
      raise 'ERROR'
    end
  end

  # Expected value: 401
  def at
    arr = [101, 201, 301, 401, 501]
    if arr.at(3) != 401
      raise 'ERROR'
    end
  end

  # Expected value: [102, 202, 302]
  def collect
    arr = [101, 201, 301]
    result = arr.collect {|x| x+1}
    if result != [102, 202, 302]
      raise 'ERROR'
    end
  end

  # Expected value: [102, 202, 302]
  def map
    arr = [101, 201, 301]
    result = arr.map {|x| x+1}
    if result != [102, 202, 302]
      raise 'ERROR'
    end
  end

  # Expected value: [101, 201, 301]
  def compact
    arr = [101, nil, 201, nil, 301]
    result = arr.compact();
    if result != [101, 201, 301]
      raise 'ERROR'
    end
  end

  # Expected value: [101, 201, 301]
  def compact!
    arr = [101, nil, 201, nil, 301]
    res = arr.compact!()
    if res != [101, 201, 301]
      raise 'ERROR'
    end
  end

  # Expected value: ['a', 'b', 'c', 'd']
  def concat
    arr = ['a', 'b'].concat(['c', 'd'])
    if arr != ['a', 'b', 'c', 'd']
      raise 'ERROR'
    end
  end

  # Expected value ['a', 'b', 'd']
  def delete
    arr = ['a', 'b', 'c', 'd']
    arr.delete('c')
    if arr != ['a', 'b', 'd']
      raise 'ERROR'
    end
  end

  # Expected value ['a', 'b', 'd']
  def deleteAt
    arr = ['a', 'b', 'c', 'd']
    arr.delete_at(2)
    if arr != ['a', 'b', 'd']
      raise 'ERROR'
    end
  end

  # Expected value: true
  def empty1
    arr = []
    res = arr.empty?
    if !res
      raise 'ERROR'
    end
  end

  # Expected value: false
  def empty2
    arr = ['1']
    res = arr.empty?
    if res
      raise 'ERROR'
    end
  end

  # Expected value: true
  def eql1
    arr1 = ['x', 'y', 'z']
    arr2 = ['x', 'y', 'z']
    res = arr1.eql?(arr2)
    if !res
      raise 'ERROR'
    end
  end

  # Expected value: false
  def eql2
    arr1 = ['a', 'b', 'c']
    arr2 = ['x', 'y', 'z']
    res = arr1.eql?(arr2)
    if res
      raise 'ERROR'
    end
  end

  # Expected value: 201
  def fetch
    arr = [101, 201, 301, 401]
    res = arr.fetch(1)
    if res != 201
      raise 'ERROR'
    end
  end

  # Expected value: ['x', 'x', 'x', 'x', 'x']
  def fill1
    arr = ['a', 'b', 'c', 'd', 'e']
    arr.fill('x')
    if arr != ['x', 'x', 'x', 'x', 'x']
      raise 'ERROR'
    end
  end

  # Expected value ['a', 'x', 'x', 'x', 'e']
  def fill2
    arr = ['a', 'b', 'c', 'd', 'e']
    arr.fill('x', 1, 3)
    if arr != ['a', 'x', 'x', 'x', 'e']
      raise 'ERROR'
    end
  end

  # Expected value: ['a', 'x', 'x', 'x', 'e']
  def fill3
    arr = ['a', 'b', 'c', 'd', 'e']
    arr.fill('x', 1..3)
    if arr != ['a', 'x', 'x', 'x', 'e']
      raise 'ERROR'
    end
  end

  # Expected value: [0, 1, 4, 9, 16]
  def fill4
    arr = [0, 1, 2, 3, 4]
    arr.fill {|x| x*x}
    if arr != [0, 1, 4, 9, 16]
      raise 'ERROR'
    end
  end

  # Expected value: 'a'
  def first1
    arr = ['a', 'b', 'c', 'd']
    res = arr.first
    if res != 'a'
      raise 'ERROR'
    end
  end

  # Expected value: ['a', 'b']
  def first2
    arr1 = ['a', 'b', 'c', 'd']
    res = arr1.first(2)
    if res != ['a', 'b']
      raise 'ERROR'
    end
  end

  # Expected value: ['a', 'b', 'c', 'd', 'e']
  def flatten
    arr1 = ['a', 'b', 'c', ['d', 'e']]
    arr2 = arr1.flatten
    if arr2 != ['a', 'b', 'c', 'd', 'e']
      raise 'ERROR'
    end
  end

  # Expected value: true
  def include1
    arr = ['a', 'b', 'c']
    res = arr.include?('b')
    if !res
      raise 'ERROR'
    end
  end

  # Expected value: false
  def include2
    arr = ['a', 'b', 'c']
    res = arr.include?('d')
    if res
      raise 'ERROR'
    end
  end

  # Expected value: [4, 5, 6]
  def replace
    arr1 = [1, 2, 3]
    arr2 = [4, 5, 6]
    arr1.replace(arr2)
    if arr1 != [4, 5, 6]
      raise 'ERROR'
    end
  end

  # Expected value: [4, 5, 7, 6]
  def insert
    arr1 = [4, 5, 6]
    arr2 = arr1.insert(2, 7)
    if arr2 != [4, 5, 7, 6]
      raise 'ERROR'
    end
  end

  # Expected value: '[1, 2, 3, [...]]'
  def inspect
    arr = [1, 2, 3]
    arr[3] = arr
    res = arr.inspect
    if res != '[1, 2, 3, [...]]'
      raise 'ERROR'
    end
  end

  # Expected value: '123'
  def join1
    arr = [1, 2, 3]
    str = arr.join
    if str != '123'
      raise 'ERROR'
    end
  end

  # Expected value: '1-2-3'
  def join2
    arr = [1, 2, 3]
    str = arr.join("-")
    if str != '1-2-3'
      raise 'ERROR'
    end
  end

  # Expected value: 'ghi'
  def last
    arr = ['abc', 'def', 'ghi']
    res = arr.last
    if res != 'ghi'
      raise 'ERROR'
    end
  end

  # Expected value: 4
  def length
    arr = ['a', 'b', 'c', 'd']
    res = arr.length
    if res != 4
      raise 'ERROR'
    end
  end

  # Expected value: 4
  def nitems
    arr = ['a', 'b', 'c', 'd']
    res = arr.nitems
    if res != 4
      raise 'ERROR'
    end
  end

  # Expected value: 'ABC'
  def pack
    arr = [65, 66, 67]
    res = arr.pack("ccc")
    if res != 'ABC'
      raise 'ERROR'
    end
  end

  # Expected value: 67
  def pop
    arr = [65, 66, 67]
    res = arr.pop
    if res != 67
      raise 'ERROR'
    end
  end

  # Expected value: [65, 66, 67, 68]
  def push
    arr1 = [65, 66, 67]
    arr2 = arr1.push(68)
    if arr2 != [65, 66, 67, 68]
      raise 'ERROR'
    end
  end

  # Expected value: ['d', 'e', 'f']
  def rassoc
    arr1 = [['a', 'b', 'c'], ['d', 'e', 'f'], ['g', 'h', 'i']]
    arr2 = arr1.rassoc('e');
    if arr2 != ['d', 'e', 'f']
      raise 'ERROR'
    end
  end

  # Expected value: [4, 5]
  def reject
    arr1 = [1, 2, 3, 4, 5]
    arr2 = arr1.reject {|x| x < 4}
    if arr2 != [4, 5]
      raise 'ERROR'
    end
  end

  # Expected value: [3, 2, 1]
  def reverse
    arr1 = [1, 2, 3]
    arr2 = arr1.reverse
    if arr2 != [3, 2, 1]
      raise 'ERROR'
    end
  end

  # Expected value: ['a', 'e', 'i', 'o', 'u']
  def select
    arr1 = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
    arr2 = arr1.select {|val| val =~ /[aeiou]/}
    if arr2 != ['a', 'e', 'i', 'o', 'u']
      raise 'ERROR'
    end
  end

  # Expected value: ['b', 'c', 'd', 'e']
  def shift
    arr = ['a', 'b', 'c', 'd', 'e']
    arr.shift
    if arr != ['b', 'c', 'd', 'e']
      raise 'ERROR'
    end
  end

  # Expected value: 26
  def size
    arr1 = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
    res = arr1.size
    if res != 26
      raise 'ERROR'
    end
  end

  # Expected value: ['a', 'b', 'c', 'd', 'e', 'f']
  def sort
    arr1 = ['d', 'f', 'a', 'c', 'e', 'b']
    arr2 = arr1.sort
    if arr2 != ['a', 'b', 'c', 'd', 'e', 'f']
      raise 'ERROR'
    end
  end

  # Expected value: 'dfaceb'
  def toString
    arr1 = ['d', 'f', 'a', 'c', 'e', 'b']
    arr2 = arr1.to_s
    if arr2 != 'dfaceb'
      raise 'ERROR'
    end
  end

  # Expected value [[1, 5], [2, 6]]
  def transpose
    arr1 = [[1,2], [5,6]]
    arr2 = arr1.transpose
    if arr2 != [[1, 5], [2, 6]]
      raise 'ERROR'
    end
  end

  # Expected value: [1, 2, 3, 4, 5]
  def uniq
    arr1 = [1, 2, 2, 3, 3, 3, 4, 5]
    arr2 = arr1.uniq
    if arr2 != [1, 2, 3, 4, 5]
      raise 'ERROR'
    end
  end

  # Expected value: ['z', 'a', 'b', 'c']
  def unshift
    arr = ['a', 'b', 'c']
    arr.unshift('z')
    if arr != ['z', 'a', 'b', 'c']
      raise 'ERROR'
    end
  end

end


###
# Call test methods
###

puts ""
puts "****************************"
puts "Beginning method invocations"
puts "****************************"
puts ""

# expectvalue [100, 200, 300]
ArrayTest.new.new1()
trace(__LINE__)

ArrayTest.new.new2()
trace(__LINE__)

# expectvalue '100|200|300|'
ArrayTest.new.new3()
trace(__LINE__)

# expectvalue [100]
ArrayTest.new.intersection()
trace(__LINE__)

# expectvalue [1, 2, 3, 1, 2, 3, 1, 2, 3]
ArrayTest.new.repeat()
trace(__LINE__)

# expectvalue [1, 2, 3, 4, 5]
ArrayTest.new.plus()
trace(__LINE__)

# expectvalue [1, 4, 5]
ArrayTest.new.minus()
trace(__LINE__)

# expectvalue [1, 2, 3, 4, 5]
ArrayTest.new.append()
trace(__LINE__)

# expectvalue 0
ArrayTest.new.compare1()
trace(__LINE__)

# expectvalue 1
ArrayTest.new.compare2()
trace(__LINE__)

# expectvalue -1
ArrayTest.new.compare3()
trace(__LINE__)

# expectvalue true
ArrayTest.new.equal1()
trace(__LINE__)

# expectvalue false
ArrayTest.new.equal2()
trace(__LINE__)

# expectvalue 2
ArrayTest.new.index1()
trace(__LINE__)

# expectvalue 0
ArrayTest.new.index2()
trace(__LINE__)

# expectvalue 0
ArrayTest.new.index3()
trace(__LINE__)

# expectvalue 2
ArrayTest.new.slice1()
trace(__LINE__)

# expectvalue 0
ArrayTest.new.slice2()
trace(__LINE__)

# expectvalue 0
ArrayTest.new.slice3()
trace(__LINE__)

# expectvalue 300
ArrayTest.new.assign1()
trace(__LINE__)

# expectvalue ['abc', 'def', 'ghi']
ArrayTest.new.assign2()
trace(__LINE__)

# expectvalue ['abc', 'def', 'ghi']
ArrayTest.new.assign3()
trace(__LINE__)

# expectvalue ['jkl', 'mno', 'pqr']
ArrayTest.new.assoc()
trace(__LINE__)

# expectvalue 401
ArrayTest.new.at()
trace(__LINE__)

# expectvalue [102, 202, 302]
ArrayTest.new.collect()
trace(__LINE__)

# expectvalue [102, 202, 302'
ArrayTest.new.map()
trace(__LINE__)

# expectvalue [101, 102, 103]
ArrayTest.new.compact()
trace(__LINE__)

# expectvalue [101, 102, 103]
ArrayTest.new.compact!()
trace(__LINE__)

# expectvalue ['a', 'b', 'c', 'd']
ArrayTest.new.concat()
trace(__LINE__)

# expectvalue ['a', 'b', 'd']
ArrayTest.new.delete()
trace(__LINE__)

# expectvalue ['a', 'b', 'd']
ArrayTest.new.deleteAt()
trace(__LINE__)

# expectvalue true
ArrayTest.new.empty1()
trace(__LINE__)

# expectvalue false
ArrayTest.new.empty2()
trace(__LINE__)

# expectvalue true
ArrayTest.new.eql1()
trace(__LINE__)

# expectvalue false
ArrayTest.new.eql2()
trace(__LINE__)

# expectvalue 201
ArrayTest.new.fetch()
trace(__LINE__)

# expectvalue ['x', 'x', 'x', 'x', 'x']
ArrayTest.new.fill1()

# expectvalue ['a', 'x', 'x', 'x', 'e']
ArrayTest.new.fill2()
trace(__LINE__)

# expectvalue ['a', 'x', 'x', 'e']
#ArrayTest.new.fill3() # TODO: Fix Array#fill to take a range
trace(__LINE__)

# expectvalue [0, 1, 4, 9. 16]
ArrayTest.new.fill4()
trace(__LINE__)

# expectvalue 'a'
ArrayTest.new.first1()
trace(__LINE__)

# expectvalue ['a', 'b']
ArrayTest.new.first2()
trace(__LINE__)

# expectvalue ['a', 'b', 'c', 'd', 'e']
ArrayTest.new.flatten()
trace(__LINE__)

# expectvalue true
ArrayTest.new.include1()
trace(__LINE__)

# expectvalue false
ArrayTest.new.include2()
trace(__LINE__)

# expectvalue 456
ArrayTest.new.replace()
trace(__LINE__)

# expectvalue 4576
ArrayTest.new.insert()
trace(__LINE__)

# expectvalue '[1, 2, 3, [...]]'
ArrayTest.new.inspect()
trace(__LINE__)

# expectvalue '123'
ArrayTest.new.join1()
trace(__LINE__)

# expectvalue '1-2-3'
ArrayTest.new.join2()
trace(__LINE__)

# expectvalue 'ghi'
ArrayTest.new.last()
trace(__LINE__)

# expectvalue 4
ArrayTest.new.length()
trace(__LINE__)

# expectvalue 4
ArrayTest.new.nitems()
trace(__LINE__)

# expectvalue 'ABC'
ArrayTest.new.pack()
trace(__LINE__)

# expectvalue 67
ArrayTest.new.pop()
trace(__LINE__)

# expectvalue [65, 66, 67, 68]
ArrayTest.new.push()
trace(__LINE__)

# expectvalue ['d', 'e', 'f']
ArrayTest.new.rassoc()
trace(__LINE__)

# expectvalue [4, 5]
ArrayTest.new.reject()
trace(__LINE__)

# expectvalue [3, 2, 1]
ArrayTest.new.reverse()
trace(__LINE__)

# expectvalue ['a', 'e', 'i', 'o', 'u']
# ArrayTest.new.select()  # TODO: Fix Array
trace(__LINE__)

# expectvalue ['b', 'c', 'd', 'e']
ArrayTest.new.shift()
trace(__LINE__)

# expectvalue 26
ArrayTest.new.size()

# expectvalue ['a', 'b', 'c', 'd', 'e', 'f']
ArrayTest.new.sort()
trace(__LINE__)

# expectvalue 'dfaceb'
ArrayTest.new.toString()
trace(__LINE__)

# expectvalue [[1,5], [2,6]]
ArrayTest.new.transpose()
trace(__LINE__)

# expectvalue [1, 2, 3, 4, 5]
ArrayTest.new.uniq()
trace(__LINE__)

# expectvalue ['z', 'a', 'b', 'c']
ArrayTest.new.unshift()
trace(__LINE__)

require File.expand_path('simple', File.dirname(__FILE__))

ary = [1,2,3]
a = "cat"
class << a
  def to_int ; 2; end
end
test(ary[a], 3, 'array coerces with :to_int')

# begin
#   ary["cat"]
#   failed_test("Expecting TypeError", TypeError, nil)
# rescue Exception => e
#   failed_test("Expecting TypeError", TypeError, e) unless e.is_a? TypeError
# end
report
