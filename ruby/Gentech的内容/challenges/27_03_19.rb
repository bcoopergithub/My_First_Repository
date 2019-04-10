## Banking app V1
# A user's initial balance is 0.0.
# Display the user's balance.
# Ask the user what they would like to do.
# If they type "balance", display their balance.
# If the user types anything other than "balance", display the message "Invalid selection!".

## Banking app V2
# Add "deposit" as a program option.
# If the user types "deposit", ask the user for the deposit amount and then add this to the user's current balance.


## Banking app V3
# Add "withdraw" as a program option.
# If the user types "withdraw", ask the user for the withdrawal amount and then deduct this from the user's current balance.
# Note: The user should not be allowed to withdraw more than their current balance!
# balance = 13.0
# puts balance
# puts "What would you want to do ? "
# input = gets().strip
# if input == "balance"
#     puts balance
# elsif input == "deposit"
#     puts "please input your deposit amount"
#     deposit = gets().strip.to_f
#     balance = balance + deposit
# elsif input == "withdraw"
#     puts "please input your withdraw amount"
#     withdraw = gets().strip.to_f
#     if withdraw <= balance
#         balance = balance - withdraw
#     else
#         puts "Insufficient Funds"
# else
#     puts "Invalid selection!"
# end

# puts "Do you want to see your final balance"
# answer = gets().strip
# if answer == "yes"
#     puts balance
# else
#     puts "Thank you for using the banking system, you have a good day !"
# end



#while version


# balance = 13.0
# puts balance

# while true
#     puts "What would you want to do ? "
#     input = gets().strip
#     if input == "balance"
#         puts balance
#     elsif input == "deposit"
#         puts "please input your deposit amount"
#         deposit = gets().strip.to_f
#         balance = balance + deposit
#     elsif input == "withdraw"
#         puts "please input your withdraw amount"
#         withdraw = gets().strip.to_f
#         if withdraw <= balance
#             balance = balance - withdraw
#         else
#             puts"Insufficient funds, But you would withdraw all of #{balance} you have"
#             balance = 0
#         end
#     else
#         puts "Invalid selection!"
#     end
#     puts "Your balance is #{balance}"
# end

# #while loop example
# counter = 0
# while counter != 5
#     puts("This code ran")
#     counter += 1

# end
# puts "EOF"



# while true
#     puts "enter'ctrl + C' to break the loop"
# end
# puts "I'm dizzy"

# #feel dizzy challene
# reponse = "GO"
# while reponse != "STOP"
#     puts "LOOPY"
#     reponse = gets().strip.upcase!
# end
# puts "I'm dizzy"

count = 0
while count +3 <=100  
    count += 3
    puts count   
end
puts "It's getting to 100"
i=0
count = 100
while count -3 >= 0
    count -= 3
    puts count
    i += 1
    puts i
end
puts "it's getting to 0"

count = 0
while count != 9
    count += 1
    puts "while loop run for the #{count} time"   
end
puts "while loop totally run for 9 times"

i = 0
counter = 5
while counter -1 >= 0
    counter = counter - 1
    i += 1 
    puts counter
    puts "while loop run for the #{i} time and hits 0"   # string interplation 可以是一个函数
end

i = 0
count = 0
while count +2 <= 16
    count = count + 2
    i += 1
    puts "while loop totally run for #{i} times"
end





