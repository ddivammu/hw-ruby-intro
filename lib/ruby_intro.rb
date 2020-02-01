# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  #sum of elements in array
  sum = 0
  arr.each do |x|
    sum = x + sum
  end
  return sum
end

def max_2_sum arr
  # sum of 2 largest element in  array
  large = arr.first
  larger = arr.last
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr.first
  else  
    arr.delete_at(0)
    arr.each do |x|
      if x > larger
        larger = x
      elsif x > large
        large = x
      end 
    end
  end
  return larger + large
end

def sum_to_n? arr, n
  #returns true if any two elements in the array of integers sum to n
  if arr.length == 0
    return false
  elsif arr.length == 1
    return false
  end
  for i in (0...arr.length)
    for j in ((i+1)...arr.length)
      if (arr[i]+arr[j]) == n
        return true
      end
    end
  end
  return false
end
# Part 2

def hello(name)
  #returns the string "Hello, " with the name
 return "Hello, #{name}"
end

def starts_with_consonant? s
  #returns true if it starts with a consonant
  compare = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
  if s[0] == "a" || s[0] == "A" || s[0] == "e" || s[0] == "E" || s[0] == "i" || s[0] == "I"||  s[0] == "o" || s[0] == "O" || s[0] == "u" || s[0] == "U"
    return false
  elsif s.empty?
    return false
  else
    for x in (0...compare.length-1)
      if s[0] == compare[x]
        return true
      end
    end
    return false
  end
end

def binary_multiple_of_4? s
  if(s.empty?)
    return false
  end
  s.each_char {|c|
    if c == "0" || c == "1"
      next
    else
      return false
    end}
  if s.to_i(2)%4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if price <= 0
      raise ArgumentError.new("Price cannot be less than or equal to $0")
    elsif isbn.empty?
      raise ArgumentError.new("ISBN does not exist")
    end
    @isbn = isbn
    @price = price
  end
  def isbn
    @isbn
  end
  def isbn=(str)
    @isbn = str
  end
  def price
    @price
  end
  def price=(num)
    @price = num
  end
  def price_as_string
    sprintf("$%.2f", @price)
  end
end
