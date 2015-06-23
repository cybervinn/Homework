# Create a function that takes a string and adds the phrase "Only in America!" to the end of it

def add_phrase(statement)
  statement = statement.to_s
	puts statement + " Only in America!"
end

add_phrase("Johnny")




# Create a function to find the maximum value in an array of numbers. 
# For instance: [100,10,-1000] should return 100.

def find_large_value(array)
  largest_value = nil
  array.each do |i|
    if largest_value.nil?
      largest_value = i
    elsif i > largest_value
      largest_value = i
    end
  end
  largest_value
end

arr1=[100,10,-1000]
puts find_large_value (arr1)


# Create a function that takes two arguments - both of them arrays. Inside of the function, combine the arrays using the items from the first array as keys and the second array as values into a hash. For example, when these two arrays are supplied as arguments:
# ruby [:toyota, :tesla] ["Prius", "Model S"]
# theyshould return a hash like so:
# ruby {toyota: "Prius", tesla: "Model S"}



def combine_arrays(a1, a2)
  new_hash = {}

  for i in 0..a1.length -1
    my_key = a1[i]
    new_hash[my_key] = a2[i]
   end 

   new_hash
end

brand = [:toyota, :tesla]
model = ["Prius", "Model S"]
puts combine_arrays(brand, mdoel)




# FizzBuzz
# Write a program that prints the numbers from 1 to 100.
# But for multiples of three print "Fizz" instead of the number
# For multiples of five print "Buzz".
# Print "FizzBuzz" for numbers that are multiples of both 3 and 5.

def fizzbuzz()
  i = 0
  while i < 101 
    if (i % 3 == 0) && (i % 5 == 0)
      puts "FizzBuzz"
      i += 1
    elsif i % 3 == 0
      puts "Fizz"
      i += 1
    elsif i % 5 == 0
      puts "Buzz"
      i += 1
    else
      puts i
      i += 1
    end
  end
end

fizzbuzz
  


