
# day 3 Challenge

# # 1

# # Basic control flow

# # Take this code and run it

# if false
#     puts "hello"
# else
#     puts "goodbye"# end

# # What does it puts to the screen? Why is this the case?


# # 2 # it puts hello to the screen, becuae it's when the first statment is ture, the loops stops

# # Now replace the if true with if false

# # What does it puts to the screen now. Why?

# # 3 because when the first condition is condsiderd false , it look to the next condiction

# # Create a variable that stores a pet type as a string

# # eg pet = "dog"
# pet = "rabbit"

# # Create an if else that when pet == the_string_you_set

# # In my case:

# # if pet == "dog"
# if pet == "rabbit"
# # puts to the screen "I have a pet", else puts to the screen "I don't have a pet"
#     puts("I have a pet ")
# else
#     puts("I don't have a pet")
# end

# # 4

# # How can we refactor the code we just wrote?

# # Hint: we don't need the ==

# # 5

# # # Define a name variable with your own name as a string.
# # name = "brandon"
# # # If name is equal to your own name puts to the screen "Hi, my name is #{name}" else puts "that isn't my name!!!"
# # if name == "brandon"
# #     puts"that is my name,"
# # end
# # # 6

# # Instead of setting the name variable as a hard coded string, I want you to get the name from the command line using gets

# name = gets().strip

# puts "Hello, my name is #{name} Thank you."
# # Test out the difference between using gets.chomp and gets.strip (you need to use either chomp or strip everytime you invoke a gets)

# # 7

# # elsif

# # You're at 120 spencer street.
# print level_8
# # Make 4 variables. level_8 is the string "reception", level_13 is the string "old coder room", level_12 is the string "classroom", location is also "classroom"

# # if level 8 is equal to location puts "im on level 8"

# # elsif level 13 is equal to location puts "im on level 13"

# # elsif level 12 is equal to location puts "im on level 12"

# # else puts "im not at 120 spencer street"

# # 8

# # How would we hit the else case in the above question?

# # 9

# # Ask a user (yourself) how many coffees you drink in a day?

# # Get the number of coffees you drink in a day as user input

# # if you drink 0 (integer) coffees in a day puts to the screen "saving $$"
# #
# # if number_of_coffees == 0
#     puts "saving $$"
# #elsif number_of_coffees == 1
#     puts "a little but of caffeine doesn't hurt"
# #elsif number_of_coffees == 2
#     puts "i need my coffee hit"
# #elsif n
# # if you drink 1 coffee in a day puts "a little but of caffeine doesn't hurt"

# # if you drink 2 coffees in a day puts "i need my coffee hit"

# # if you drink 3 coffees in a day puts "hmm it's getting a bit much"

# # if you drink more than 3 coffees in a day puts "AHHHHH so much caffeine"

# # Hint: if the code is breaking think about data types.

# # 10

# # Time

# # If the time is less than "12PM" puts morning, if time is after "12PM" but less than "1PM" puts lunch, if the time is after "1PM" puts afternoon, if the time is less than "9PM" but more than "7PM" puts "dinner time"

# # 11

# # Define a number variable with any integer

# # If the variable is odd puts "its odd" if the variable is even puts "its even"

# # There are two different ways to go about this, using a modulo operator and using ruby integer methods, answer the question using both of these approaches

# # 12

# # Instead of hard coding the number variable use gets.strip

# # Again remember data types!!

#Day 3_Chanllenge_2

# A=['orange','white','blue']
# Store the string blue (which you accessed with an index) in a variable (also called blue, sorry for being confusing)
# B = A[2]
# puts A[2]
# C = ['Calf','Duck','Elephant','Goat','Lamb','Lion','Mule','Dog']
# Add Puma to the end of the array
# C.push('Puma')  # array.push(object) #C<<"puma"

# Insert Joey after Goat and before Lamb  ;
# C.insert(4,'Joey') #array.insert(index, object)
# puts "#{C}"
# Delete Mule
# C.delete_at(7)   # array.delete_at(index) # C[-1]
# P C
#Reverse the order of the array
# C.reverse!
# puts "Reverse the order of the array #{C}"
# Replace Elephant with Foal
# C[6]= 'Foal'  # C[index]= 'object'
# puts "Replace Elephant with Foal #{C}"
# Add Bear to the end of the array
# C.push('Bear')
# puts "Add Bear to the end of the array #{C}"
# Reverse the order of the array again
# C.reverse!
# puts "reverse again#{C}"
# 5
# Create an array with 10 animals you'd find at the zoo
# D=['lion','panda','tiger','bird','monkey','elephent','birds','penguin','snake','rabbit']
# 6
# Access the 3rd, 5th and last animal using indexes (remember indexs start at 0), store these strings in variables that match the string value
# puts D[2,4,-1]
# Optional: there is a ruby method that allows you to access the last position in an array, use that instead of a hard coded index number


# 7
# Using the variable blue you stored in question 3 create a control flow structure whereby if your colour is blue puts "blue dub a dee dub a diii" else puts "some other colour"
# if blue =="blue"

# 8
# How do we insert a new string value into our animals array? There are many ways to do this, use a method that you haven't already
# zoo)anmals<<"eagle"

# 9
# Now we have a new animal in our animals array we want to discard (remove) the animal at the start of the array.
# How do we do this?

# 10
# The zoo is cutting down on costs and needs to now remove the final 5 items in the animals array
# How do we do this?
# zoo_animals.pop(5)=5.times{zoo_animals.pop}
# zoo_animals.slice!(5..9)
# zoo_animals.slice!(5...9)
#range


# 11
# The owner of the zoo won the lottery and can now add those same 5 animals back.
# C.insert(-1, '',',',',','')
# How do we do this ruby an array method rather than just hard coding a new animals array.

# 12
# The zoo owner has now lost track of how many animal types are in their zoo.
# Find out how many animals are in the array using a ruby array method.
# C.length
# 13
# The zoo owner wants to know if their zoo contains specifically只是 "monkeys".
# Find out if the array contains monkeys (true or false) using a ruby array method.

# C.include?('monkeys')
# 14
# The zoo owner wants to have their animals sorted in alphabetical order because they're trying to be more organised.
# Achieve this using an array method

# 15
# Create a variable some_letters which is a range of letters from a to e using the ruby range syntax
# Create another variable alphabet which is a range of letters of the whole alphabet (from a to z).
# Go to this link to see how this is done https://ruby-doc.org/core-2.6.1/Range.html (i always forget how ruby ranges work so i'll just by default go to the docs)
# If the some_letters array isn't equal in length to the alphabet's array in length puts 'some_letters is shorter in length than alphabet'

# 16
# Ask the user for three or more grocery items, store them in a list (array). It's OK to ask three times. Show the list to the user. Can’t remember how to use a specific ruby feature/syntax? That’s normal! Google + Ruby docs :)
# Try using the `.length` method to tell the user how many items are in their list.
# Sort the list alphabetically before showing it to the user
# Are you using gets.chomp multiple times? A 3.times loop might tidy your code.
# If the user tries to add 'Ice Cream', secretly replace it with 'Broccoli'
# Ask the user for quantities too. Show a nice looking list back to the user.
# counter = 0
# print "Please input a number"
# input_num = gets().chomp.to_i
# puts "you have just input number #{input_num}"
# bool_arr = []

# while (counter < input_num)



#    if (counter % 2 == 0)
#        bool_arr.push(true) #push[]
#       p (bool_arr)

#    else
#        bool_arr.push(false)  #"true"==ture : false
#        p (bool_arr)
#     end
#     counter += 1
# end


# cocktail= {price: 22, profit: 14}
# beer = {price: 12,profit: 9}
# water = {price: 6, profit: 4}
# print("Please order a drink(beer, cocktail, or water):")

# order = {cocktails: 3,beers: 6,waters: 2}

#  ordered = []
#  c_order = gets().strip()
# while c_order != "quit"

#     if c_order == "cocktail"
#         order[:cocktails] = order[:cocktails] + 1
#     elsif c_order == "beer"
#         order[:beers] = order[:beers] + 1
#     elsif c_order == "water"
#         order[:waters] = order[:waters] + 1

#     end

# ordered << c_order
# p "Ordered List : #{ordered}"
# puts "What you just ordered is : #{c_order}"
# puts "Now what I need to make#{order}"
# print ("Please order a another drink, or quite to exit\n")
# c_order = gets().strip()
# end

# puts ("Enjoy your day!")

# puts ordered
# puts order
# order_profit =

# num_cocktails = 3
# num_waters= 2
# num_beers = 6

# puts("what do you want to order")

# drink = gets().strip
# puts "The input is: {drink}"


# if (drink == "cocktails")
#    num_cocktails += 1
# elsif (drink == "water")
#     num_waters += 1
# elsif (drink == "beers")
#     num_beers += 1
# end

# puts "cocktails: #{num_cocktails}"
# puts "water : #{num_waters}"
# puts "beers : #{num_beers}"

# cocktails_price = 22
# cocktails_cost = 8
# beers_price = 12
# beers_cost = 3
# waters_price = 6
# waters_cost = 0.15
# cocktails_profit = cocktails_price - cocktails_cost
# beers_profit = beers_price - beers_cost
# waters_profit = waters_price - waters_cost
# total_cocktail_profit = num_cocktails * cocktails_profit
# total_beers_profit = num_beers * beers_profit
# total_waters_profit = num_waters * waters_profit
# total_profit = total_cocktail_profit + total_beers_profit + total_waters_profit
# puts "My total profit is #{total_profit}"

# num_cocktails = 0
# num_waters= 0
# num_beers = 0

# cocktails_price = 22
# beers_price = 12
# waters_price = 6
# puts "how much money do you have"
# money = gets().strip.to_i

# while (num_cocktails + num_beers + num_waters <= 10 && money > 0)

#     puts("what do you want to order")
#     drink = gets().strip
#     puts "Customer says he want : #{drink}"
#     if (drink == "cocktail")
#             num_cocktails += 1
#             money = money - cocktails_price
#     elsif (drink == "water")
#              num_waters += 1
#              money = money - waters_price
#     elsif (drink == "beer")
#             num_beers += 1
#             money = money - beers_price
#     end
# puts "cocktails : #{num_cocktails}"
# puts "waters : #{num_waters}"
# puts "beers : #{num_beers}"
# total_price = num_cocktails * cocktails_price + num_beers * beers_price + num_waters * waters_price
# puts "Customer has spent #{total_price} on the drink"
# puts "customer has #{money} left"

# end
# puts "It's time to go home"


# odd and even example

# x = gets().strip.to_i
# num = x % 2
# if num == 1
#     puts "odd"
# else
#     puts "even"
# end

#hash Chanllenge

# fruit = {num_banana: 3, num_apples: 4}
# drink = {:num_coffee=>5, :num_beers=>6}



# puts [:num_coffee]


#day_5_Chanllenge
# 1.
# def puts_str(str)
#     puts(str)
#     # return nil
# end

# puts_str("Brandon")
# puts_str("David")
# puts_str("Adam")

# 2. Define a method that takes two arguments and makes a hash out of them; the first argument being the first value and the second being the second value. You can choose what to call your keys.
# def hash_value(value1 ,value2)
#     hash={
#         key1:value1,
#         key2:value2
#     }
#     return hash
# end
# hash1= hash_value(3,true) # calling is a variable = def_name(parameter1, parameter2)
# puts hash1
# puts hash2 = hash_value(false,[])
# puts hash3 = hash_value("A",3.141)
# 3. Define a method that takes in a number, and tells you whether it is odd or even by returning a boolean.
# def boolean(num)
#     if num % 2 == 0
#         return true
#     else
#         return false
#     end #very important, keep that on
# end

#  boo_1 = boolean(3)

# #4

# def date_today()
#     return Time_now
# end

# def rect(length,width)
#     result = 0
    # if (length < 0 || width < 0 )
#         puts "Error in input"
#     else
#         result = length * width

#         puts "Calculation check: #{result}"
#     end
#     return result
#     puts "13" #puts can only add before return, if puts after return, its unreachable
# end

# result_def = rect(-3,4)
# puts result_def



# def tri(width, Height),
#     return width* Height
# end

# def cir(r)
#     return 3.14r**2

# Q5

# counter = 0

# while (counter<6)
#     puts counter
#     if counter ==4
#         break
#     end
#     counter += 1
# end


# challenge 2019/2/26



 # 1. Run the following code for different values (i.e. try to break it)
  # Use numbers, letters etc. Do we need to use to_i for this?

  print ("Select an option from 1-3 (0 to quit)")
  option = gets().strip.to_s
  case option
  when "0"
    puts ("You chose to quit")
  when "1"
    puts ("You chose otpion 1")
  when "2"
    puts ("You chose otpion 2")
  when "3"
    puts ("You chose otpion 3")
  else
    puts("Error. Invalid option.")
  end


  # 2. Run the following code for different values (i.e. try to break it)
  # Use leading spaces, trailing spaces, etc

  print ("What is your name? ")
  name = gets()
  puts("Name before chomp #{name} with length #{name.length}")
  chomped_name = name.chomp()
  puts("Name after chomp #{chomped_name} with length #{chomped_name.length}")
  stripped_name = name.strip()
  puts("Name after strip #{stripped_name} with length #{stripped_name.length}")


  # 3. Write a method called check_capacity_case that has an argument capacity and contains
  # folllowing the case code

  # case capacity
  # when 0
  #   "You ran out of gas."
  # when 1..20
  #   "The tank is almost empty. Quickly, find a gas station!"
  # when 21..70
  #   "You should be ok for now."
  # when 71..100
  #   "The tank is almost full."
  # else
  #   "Error: capacity has an invalid value (#{capacity})"
  # end

  # 3.1 Create a variable capacity that has a random value between 0 and 100
  # capacity = Random.rand(100)

  # 3.2 Use string interpolation to puts the value of capacity and the result of the check_capacity_case

  # 3.4 Use a loop to call the check_capacity_case method and put the results 10 times

  # 3.5 Create an array, test_values, for testing the check_capacity_case method.
  # The values should check each of the boundary conditions and ranges. What is minimum
  # number of values you will need?

  # 3.6 Create a loop to test check_capacity_case with each of the vakues in test_values

  # 3.7 To experiment with testing we will create another version of the check capacity method.
  # Call the new method check_capacity. This method will use an if statement with
  # conditional operators (like ==, <= etc).

  # 3.8 Use the test_values to test the method check_capacity
  # Compare the results to the results from check_capacity_case

  # 3.9 Add a bug to the check_capacity method by changing one of the conditions
  # eg: change < to >
  # Run the test_values again.
  # How easy was it to find the error?


  # 4. Install the faker gem and get the following code running
  # require 'faker'
  # Faker::Config.locale = 'en-AU'

  # 10.times do
  #   now = DateTime.now
  #   created_at = now - rand(3 * 24 * 60)
  #   person = {
  #       created_at: created_at,
  #       updated_at: now + rand(24 * 60),
  #       first_name: Faker::Name.first_name,
  #       last_name: Faker::Name.last_name,
  #       mobile_number: Faker::PhoneNumber.cell_phone.gsub(/[^0-9,.]/, ''),
  #       postcode: Faker::Address.postcode,
  #       customer_email: Faker::Internet.email(:firstname),
  #       payment_type: ['20.0', '15.0', '5.0'].sample
  #     }

  #   puts "-----------------------------------------"
  #   person.each do |key, value|
  #     puts "#{key}\t#{value}"
  #   end
  # end

  # 4.1 Change the person hash to use Faker::Name.name instead of first_name and last_name

  # 4.2 Change to use faker to generate the dates.
  # See https://github.com/stympy/faker/blob/master/doc/default/date.md

  # 5. Use the faker gem to generate data and test your Hamburger class
  # Generate 100 hamburgers

  # 6. Ask a neighbour for their Hamburger class
  # Use the faker gem to test their Hamburger class

  # Beast
  # 7. Extend yesterdays module challenge to only allow passwords with at
  # least 6 characters and at least one number
  # Write a test plan to work out what tests you would need to ensure this working
  # Write a method to run the tests

  # 8. Write test methods to test the hamburger class
  # It should test displaying the menu when there are no spicy items,

  # 9. Use the faker gem to test the Artist / Album / Song classes

  # 10. Ask a neighbour for their Artist / Album / Song classes
  # Use the faker gem to test their Artist / Album / Song classes

  # Beast++
  # 11. Write test methods that use faker data to test the Artist / Album / Song classes
  # Name the test methods according to what is being tested eg: testing_Artists_with_no_albums

  # 12. Write test methods for some of the later numbered challenges in
  # ruby fundamentals
  Collapse




  Message Input


  Message #challenges

  Files



