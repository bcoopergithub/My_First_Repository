# module DatingApplication   #creating module
#     def show_all_users()
#         .....
#     end

#     def show_all_single_users()
#         .....
#     end
# end

# class UserProfile         #using a mudule
#     include DatingApplication
# end

# new_user = UserProfile.new
# p new_user.show_all_single_users()

# CONSANTS

# 加一个常量
# 常量不是变量,常量是不可能改变的,就像π

# 当if 里都是一个变量等于一些数字比较,就可以用case number (when)

# result = true ? "true" : "false"   #默认是true
# puts(result)


# print ("What is your name? ")
#   name = gets().strip
#   name = name.length > 20 ? name.slice(0, 20) : #name 的长度大于20的话,就截取前10位
#   puts(name)

# 50.times {动作}


File.open("todolist.txt","w") do |line|
    line << "Buy milk\n"
    line << "Put out garbage\n"
    line << "Do laundry\n"
end



