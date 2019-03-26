if false
    puts "hello"
else
    puts "goodbye"
end
#=> false

if true
    puts "hello"
else
    puts "goodbye"
end
#=> true


# # example of one liners
# puts (if 1 then 2 else 3 end) # => 2

# puts 1 ? 2 : 3                # => 2

# x = if 1 then 2 else 3 end
# puts x                        # => 2

# result = (true ? "true" : "false")

# #example of ternary operator
# print ("What is your name? ")
# name = gets().strip
# name = name.length > 20 ? name.slice(0, 20) : name
# puts(name)

# # example of numbered list
# arr = [1,2,3,4,5]
# arr.each_with_index do |item, index|       #或者 arr.each_with_index {|item,index| puts ("#{index+1}. #{item}") }
#     puts ("#{index+1}. #{item}")           #
# end

# # example of numbered list without do
# arr = [1,2,3,4,5]
# arr.each_with_index { |item, index|
#     puts ("#{index+1}. #{item}")
# }



# # 50.times { print("=") }
# puts ("\nYour to do list")
#     File.open("todo-list.txt","w").each do |line|  #could be read,write and append
#     puts line
# end

# File.open("todo-list.txt", "a") do |line|
#     line << "Buy milk\n"
#     line << "Put out garbage\n"
#     line << "Do laundry\n"
# end
# ?????????????????
50.times { print("=") }
puts ("\nYour updated to do list")
File.open("todo-list.txt").each do |line|
    puts line
end
# ??????????????????

# # question
# # question = if question.size > 20 then
# #     question.slice(0, 20) + "..."
# #   else
# #     question
# #   end

# 1.1 Create a constant for the todo list file name
FILE_NAME = "todo-list.txt"     #为todo-list.text创建一个不能变的名字
# 1.2 Write a method to display the to do list, pass the file name as a parameter
def Display_list(file_name) #
    File.open(file_name)   #各种文件必须打开才能展示
    puts file_name
end
Display_list(FILE_NAME)

# 1.3 Ask the user "what do they want to add to the to do list"
    puts"what do they want to add to the to do list"
# 1.4 Read each item in the to do list into an array
        Arr = []
        File.open(FILE_NAME,"r").each do |item|
        Arr << item
# 1.5 Display each item in the array in a numbered list
        arr.each_with_index do |item, index|
        puts ("{#index}", "{#item}")


# require 'csv'
# require 'pry'

# csv_text = File.read('world-cities.csv')
# csv = CSV.parse(csv_text, :headers => true)
each_with_index do |row, index|
    row_data = row.to_hash
# cities = []
# csv.each do |row|
#     row_data = row.to_hash

#     if ( row_data['country'] == 'Australia' && row_data['subcountry'] == 'Victoria')
#         puts row_data
#         cities << row_data
#     end
# end
# puts cities.length

# 2.2 Write a method called subcountry_city_count that takes three parameters; cities, country and subcountry,
# and returns the number of cities


# 2.3 Call the subcountry_city_count method five times. Each time with a different set of paramters

coutyry = [Australia]

city_amount = []

coutry.each_with_index do  |coutry_|



    2.4

    citie     ?????  row.to_hash

    world.get ....

