# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  s = 0
  if arr.length == 1
    s = arr[0]
  elsif arr.length > 1
    s += arr.max
    arr.delete_at(arr.index(s))
    s += arr.max
  end
  return s
end


# def max_2_sum arr
  # YOUR CODE HERE
#   s = 0
#   test = []
#   if arr.length == 1
#     s = arr[0]
#   elsif arr.length > 1
#     test = arr.shift(2)
#     arr.each {|item| test.delete_at(test.index(test.push(item).min)) }
#     s = test.sum
#   end
#   return s
# end

def sum_to_n? arr, n
  # YOUR CODE HERE
  l = arr.length-1
  v = false
  if arr.length > 1
    for i in 0..l
      for j in i+1..l
        if arr[i] + arr[j] == n
          return true
        else
          j += 1
        end
      i += 1
      end
    end
  end
  return v
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /\A[a-z&&[^aeoiu]].*/i === s
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s = s.delete(' ')
  /^[01]+$/ === s ? s.to_i%4 == 0 : false  
end



# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    
    unless isbn != ''
      raise ArgumentError.new('isbn must not be an empty string.')
    end
    @isbn = isbn

    unless price > 0 
      raise ArgumentError.new('price must be a float bigger than zero.')
    end
    @price = price
    
  end

  def price_as_string
    sprintf("$%0.2f", @price)
  end

end
  