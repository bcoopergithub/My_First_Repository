

# counter =0
# while(counter<5)
#     puts counter+1
#         puts("repeat")
#         counter = counter + 1 # counter += 5
# end
# puts("counter is #{counter}")
# puts("End Of File")


counter = 0
arr=[3,7,4,8,9,1]

while(counter < arr.length)
    puts(arr[counter])
    counter += 1
end
# arr3 = []
# arr2.each do |x|
#     p(x)
#     if(x>9)
#         arr3 << x
# end
# p(arr3)

arr=[3,7,4,8,9,1]
arr.each do {|x| x>4}   # 错误 ,因为 |x|后只能跟action,不能加条件
puts arr
end

# print("what is the weather temperature?")
# temperature = gets().strip
# temp_integer = temperature.to_i
# puts(temp_integer)
# if (temp_integer == 0)
#     puts("it's zero")
# elsif (temp_integer < 0)
#     puts("it's below zero")
# elsif(temp_integer<=15)
#     puts("It's COLD")
# elsif(temp_integer <=28)
#     puts("It's WARM")
# else
#     puts("It's Hot")
# end

# puts("Enjoy your day")


