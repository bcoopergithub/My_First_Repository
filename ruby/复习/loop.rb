#在loop中变量变化的例子

loop 里的变量不会影响全局变量

current = 2019
(1..10).each do |current|
current = current + 1
puts current
end
puts current    # 2019
        
name = "Bob"
counter = 0
('Ted'..'Zed').each do |n|
name = n
puts name
end
puts name   #Zed


name = "Ted"
if false
name = "Bob"
end
puts name
# TED   如果if 判断false,直接跳过if loop,运行之后的程序
# infinite loop
while true
    # do something
end

counter = 0
while counter < 5  #检查
    puts counter
    counter += 1
end

# .each loop
arr = [1,2,3,4,5]
arr.each do |num|  # action的次数为数组的宽度
    puts num
end

when loop

    test_val = [0,5,35,-3,"error"]
    def check_cap(number)
        case number
        if number = 0                   # when 就是 if number =  但是之前要定义case number

            "youu ran out of gas"
        end
    end
    p check_cap(0)


time 是一种方法
次数.times do
#   执行语句
end
# return只存在于method里, return可以返回任何datatype ,或者array,hash,method


# print "input a number"
# i = gets().chomp.to_i
# # if i != 10
# #     return result = true

# array = [0,1,2,3,4,5,6]
# array.each do |item|
#     if item % 2 ==0
#        puts item +1
#     end
# end

# print var
# # elsif i == 0
# #     var = zero
# # elsif i == 1
# #     return 1
# # else
# #     puts 1<i<10
# # end
# def tell_me_if_true(i)
#     if i != 10
#         return  true
#     else
#         return false
#     end
# end

def m1 param
    if param == 1
      return 'returned 1'  #if 就是 符合条件,实行statement,不符合条件,执行end后的statement(action)
    end
    'returned default value' # 根据Ruby语言规范，最后一条执行语句的结果将作为返回值返回，return是可选的
    return 1
end

  p m1(2) # => returned   1

ensure

def m1
  return 'return default' #用不用return来返回, 都会返回'return default'
ensure
  puts 'I am sure that it will be here!'   #一般来说return后的都不执行,但用了ensure,就仍然执行
end
puts m1  #ensure后用了puts 就会先打印,最后返回,并且一个method不能return两个东西,return是在所有action最后的返回的



# var = tell_me_if_true(10)
#  p result

#  puts (if 1 then 2 else 3 end) # => 2

#  puts 1 ? 2 : 3                # => 2

#  x = if 1 then 2 else 3 end
#  puts x                        # => 2

# if 1
#     return 2


# input = true
#     def thing(input)
#         item =
#                 if true
#           return 3
#         end
#         return 5
#         var = return
#       end

#       puts var


#       puts thing("hi").class #> Array
#       puts thing("not hi").class #> NilClass

#       @cheese ? 'with cheese' : 'with no cheese'

#       input_type =
#   if gets =~ /hello/i
#     "greeting"
#   else
#     "other"
#   end


# def comp_a()
#     a = gets().to_i
#     if a < 0
#         "no negatives"
#     elsif a > 10
#         "too big"
#     else
#         "fine"
#     end
# end

# puts comp_a()

# def aump()
# 1? 2 : 3
# end

# puts aump(1)


# def a
#     if a>2
#     return true
#     else
#     return false
# end

# while loop
counter = 5
while counter < 10 do puts counter
    counter = counter + 1  end # do 可以让条件和statement放在同一行,



def ask()
    puts "press 1"
    typed_answer = gets().strip
    #return typed_answer
end
require 'pry'

def check
                                        unitl a = 1 就是while a != 1

    while(ask() != "1")
        puts "Incorrect Response"
    end
    puts "answer is 1"
end

check

# while (condition is wrong )
#     speakt question


def ask()
    puts "press 1"
    typed_answer = gets().strip
    return typed_answer
    #可以插入return typed_answer ,但不必要
end

def check

    input = ask()      #无限循环
    while input != "1"
        puts "Incorrect Response"     # 在while里用可以用if... break来跳出while loop
        ask()
        if input = "1"
        break
        end
    end
    puts "answer is 1"
end
check

def ask()
    puts "press 1"
    @typed_answer = gets().strip

    #return typed_answer
end


def check

    ask()
        #这个可以

    while @typed_answer != "1"

        puts "Incorrect Response"
        ask()

    end
    puts "answer is 1"
end

check





def ask()
    puts "press 1"
    @typed_answer = gets().strip

    #return typed_answer
end


def check

    ask()
    input = @typed_answer      #无限循环
    begin

    puts "Incorrect Response"
    ask()
    end while input != "1"

    puts "answer is 1"
end
check

cofid
# for loop

for  i in 0..5 # (0..5).each do |i|


    for i in 0..5
        if i > 3
           break
        end
        puts "num is #{i}"
     end



(0..5).each do |i|

    if   i > 3
        break
    end                  所有在循环里的都是local变量

end
i =@i
puts "because i = #{@i}, so it jump out of the loop"


# 设置一个随机数为定值 然后建立一个数组,依次放入true和false
counter = 0
random_num = rand(1..100)
bool_arr = []

while (counter <= random_num)

   counter += 1

   if (counter % 2 == 0)
       bool_arr.push(true)

   else
       bool_arr.push(false)

   end
   puts(bool_arr)
   puts(“Counter: #{counter}“)
   puts(“Random Number: #{random_num}“)

end