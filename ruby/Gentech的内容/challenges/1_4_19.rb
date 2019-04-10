# 1. Create an array containing the names of all of the pets you have ever had (min 5).
# array1 = [dog,rabbit,duck,cat,snake,monkey]
# 2. Print the first name in the array.
# puts array1.first

# 3. Print the second name in the array.
# puts array[1]

# 4. Print the last name in the array.
# puts array[-1]
# puts array1.last

# print (1..100).to_a

# 5. Create an array containing 10 numbers (0 to 100)
# array = []
# 10.times do
#     array<<rand(0..100)  
# end
# print array


# 6. Display the result of adding the number at position 1 to the number at position 2.
# array[1]= array[1] + array[0]
# print array


# 7. Display the result of subtracting the number at position 2 from the number at position 9.

# array[8] = array[8] - array[1]
# print array

# 8. Display the result of multiplying the number at position 3 by the number at position 8.
#    Display the result of dividing the number at position 4 by the number at position 7.

# array[2] = array[2] * array[7]
# array[3] = array[3] / array[6]
# print array

# 9. Loop through your array of pets and display the name of each pet in a nicely formatted string - for instance "This pet's name is Anakin".
# array_1 = ["dog","rabbit","duck","cat","snake","monkey"]  # array里的所有英文都需要是string 
# array_1.each {|pet| puts "this pet is #{pet}"}

# 10. Loop through the numbers array and display each number in a nicely formatted formatted string - for instance "This awesome number is 99".
# array =  (1..100).to_a
# array.each {|num| puts "this awesome number is #{num}"}
# array.each do |num|
#      puts "this awesome number is #{num}"
# end
# 11. Loop through the numbers array and use addition to accumulate the value of all numbers. Display the result when the loop ends.
# array = [1,3,2,4,6,2,8]

# count = 1
# sum = 0
# array.each do |x|
#     puts "第 #{count} 轮\n\n"
#     puts "现在x是 #{x}"
#     puts "这次sum应该是x的值 #{x} 和sum的值 #{sum} 之和"
#     sum = sum + x
#     count = count +1
#     puts "现在sum是 #{sum}\n\n"
# end
# puts "最后sum的值是 #{sum}"

# you are working at a bar where you have a current backlog of drinks to make:
#  3 party parrot cocktails
# 2  parrot waters
# and
# 6 party parrot beers

backlog = []

balance = rand(100..500)
puts "\nCustomer now have a balance of $#{balance}\n"
cocktail_price = 22
cocktail_num_make =  0
cocktail_cost = 8
cocktail_profit = cocktail_price - cocktail_cost


beer_price = 12
beer_num_make =  0
beer_cost = 3
beer_profit = beer_price - beer_cost

water_price = 6
water_num_make =  0
water_cost = 0.15
water_profit = water_price - water_cost

puts "       \nWhat do you want to order???\n
              1 => Cocktail
              2 => Beer
              3 => Water
              4 => Exit"
option = gets.strip
while backlog.length<10
    if option == "1"
        puts "Your Order is Cocktail"
        puts "How many"
        num_cocktail_order = gets.strip.to_i
        cocktail_total_price = num_cocktail_order * cocktail_price
        if balance >= cocktail_total_price
            balance = balance - cocktail_total_price
        else
            puts "\n=================================== Insufficient Fund ==================================================\n"
        end
        
        cocktail_num_make = cocktail_num_make + num_cocktail_order
        num_cocktail_order.times {backlog<<"cocktail"}
        
        puts "\nNow you have already ordered $#{backlog}\n"
        
        puts "Now you have already spent $#{cocktail_num_make*cocktail_price} on Cocktail"
        puts " You have already totally ordered #{backlog.length} all drinks"

    elsif option == "2" 
        puts "Your Order is beer"
        puts "How many"
        num_beer_order = gets.strip.to_i
        beer_total_price = num_beer_order * beer_price
        if balance >= beer_total_price
            balance = balance - beer_total_price
        else
            puts "\n=================================== Insufficient Fund ==================================================\n"
        end
        beer_num_make = beer_num_make + num_beer_order 
        num_beer_order.times {backlog<<"beer"}
        puts "\nNow you have already ordered $#{backlog}\n"
        puts "Now you have already spent $#{beer_num_make*beer_price} on beer"
        puts " You have already totally ordered #{backlog.length} all drinks"
    elsif option == "3" 
        puts "Your Order is water"
        puts "How many"
        num_water_order = gets.strip.to_i
        water_total_price = num_water_order * water_price
        if balance >= water_total_price
            balance = balance - water_total_price
        else
            puts "\n=================================== Insufficient Fund ==================================================\n"
        end
        
        water_num_make = water_num_make + num_water_order 
        num_water_order.times {backlog<<"water"}
        puts "\nNow you have already ordered $#{backlog}\n"
        puts "Now you have already spent $#{water_num_make*water_price} on Water"
        puts " You have already totally ordered #{backlog.length} all drinks"
    elsif option == "4"
    
        break
    end
    puts "\n Now you have $#{balance} left\n "
    puts "  \n What else do you want to order???\n
              1 => Cocktail
              2 => Beer
              3 => Water
              4 => Exit "
    option = gets.strip
end
puts "\nyou have already spent $#{cocktail_num_make*cocktail_price+beer_num_make*beer_price+water_num_make*water_price} on your drink" 

puts"\nYou have already contribute $#{beer_num_make*beer_profit+cocktail_num_make*cocktail_profit+water_num_make*water_profit} on this bar "
puts "\nNow we know you still have $#{balance} in your pocket !"
puts "\nthis is your order list #{backlog}\n  "   
        
        



# write a program that asks the customer for their order.
# if they order a party parrot cocktail, add one to the number of party parrot cocktails you need to make,
# if they order a party parrot water, add one to the number of party parrot waters you need to make,
# if they order a party parrot beer, add one to the number of party parrot beers you need to pour

# print the final drinks order so you know what to make

# ****
# cocktails sell for $22, and cost $8 to make
# beer sell for $12, and cost $3 to pour
# water sell for $6, and cost $0.15 to make

# print out the total profit for the orders you have



# 1. Use a loop to rewrite problem above to repeatedly take orders for drinks. Start all the drink numbers at 0, and when they reach 10 drinks in total, inform the user that it's time to go home. 
# 2. Add to your program a question regarding how much money the user has. When they have blown their budget, inform the user and tell them to head home.


