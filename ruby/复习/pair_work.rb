# Afternoon Methodzzz :P

# 1. Find the Largest Number
# Write a method that will take two numbers, and return whichever is larger. If the numbers are equal, it should return "Numbers are equal".
# *E.g.* largest_number(100,50) should return 100
# *E.g.* largest_number(10,10) should return "Numbers are equal"
# Display the returned value.
# make_num(num1,num2)
# def largest_number(num1,num2)
#     while num1.class == Integer and num2.class == Integer
#         if num1>num2
#             puts num1
#             return num1
#         elsif num1<num2
#             puts num2
#             return num2
#         else
#             puts "numbers are equal"
#         end
#     end
#     puts "Make sure both inputs are numbers"
#     make_num(num1,num2)
# end

# def make_num(num1,num2)
#     puts" please type num 1"
#     num1 = gets.strip
#     puts" please type num 2"
#     num2 = gets.strip
#     return num1,num2
# end

# puts largest_number(num1,num2)



# ## Optional
# Can you set this method up, so, if it is given a variable that is not a number, it returns "Make sure both inputs are numbers", as opposed to erroring out.

# 2. Add two numbers
# Create a function that will take 2 numbers, and will return the sum of those two numbers.
# *E.g.* add_two_numbers(4,6) should return 10
# *E.g.* add_two_numbers(42,15) should return 57
# Display the returned value.

# sum =0

# def add(sum)

#     while true
#         puts "please add  i"
#         i = gets().strip.to_i

#         sum = sum + i
#         puts "sum is #{sum}"
#     end
# end

# add(sum)



# ## Optional
# Can you alter this function, so it will sum together any number of inputs?

# # 3. Define a method that takes a string as an argument. Display the arguments. Call this method three times, once with your name, and two more times with the names of two classmates.

# name_hash = {
#     :brandon => "Brandon Cooper",
#     :matthew => "Matthew Dwyer",
#     :stewie => "Stewie Henry"
# }

# def name(input, hash)

#     return hash[input.to_sym]
# end                                        #method 不能用外面的变量,如果一定要用,就把外面的变量变成arguments
# puts"pleasse input your first name"
# input = gets().strip.downcase
# puts name(input, name_hash)

# 4. Define a method that takes two arguments and makes a hash out of them; the first argument being the first value and the second being the second value. You can choose what to call your keys. Return this hash from the method. Now call the method three times with different values each time. Store the result of these method calls in variables, and check that these variables contain hashes by printing them.

# 5. Define a method that takes in a number, and tells you whether it is odd or even. Call the method with 3 odd numbers and 3 even numbers.

# 6. Define a method that takes in no arguments and prints/puts to screen "OH HAI"




