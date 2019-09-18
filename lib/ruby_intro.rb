# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  ans = 0
  arr.each do |i|
    ans = ans+i
  end 
  return ans
  
end

def max_2_sum arr
  # YOUR CODE HERE
  n=arr.length
  if n == 0
    return 0
    
  elsif n==1
    return arr.at(0)
    
  else
    
    
    arr=arr.sort
    
    return arr[-1]+arr[-2]
    
  end
  
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr=arr.sort
  l=0
  r=arr.length-1
  
  while l < r 
     sum = arr[l]+arr[r]
      if sum < n
         l = l+1
         
      elsif sum > n
          r = r-1
      else
        return true
      end
  
  end
  return false
  
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  if s[0].ord < 65 or s[0].ord > 122 or (s[0].ord > 90 and s[0].ord < 97)
      return false
  end
  
  
  ch=['a','e','i','o','u','A','E','I','O','U'] 
  
  if ch.include?(s[0])
    return false
    
  else
    return true
  end
  
end

def binary_multiple_of_4? s
  
  ans = s.delete "0" "1"
  if ans.length!=0
    return false
  end
  if s.length ==0
    
    return false
  end
  number = s.to_i(2)
  if number % 4 == 0
    return true
    
  else
    return false
  end
  
  puts s
  
  
  
  
  
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isb, pric)
    if pric<=0 or isb ==''
      raise ArgumentError
    end
    @isbn=isb
    @price=pric
  end
  def isbn
    return @isbn
  end
  def price
    return @price
  end


 def price_as_string
     y='%.2f' %@price
     return "$#{y}"
 end
  
end




