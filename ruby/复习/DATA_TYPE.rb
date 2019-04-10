# DATA_TYPE

Number => "interger","Float",
Strings
Boleans => "true","false"
Symbols
nil

a = [1,2,3]
a.each do |x|
    puts x
end

# comment
#To create a ruby comment you insert a hashtag # at the front of the

# this is a comment
 # string interpolation is "#{}""

 #

 a + b 被解释为 a+b （这是一个局部变量）
 a  +b 被解释为 a(+b) （这是一个方法调用）

#string


print "123".split(,) #把string转换成array
name = 'harrison'
name.upcase #不改变 name的内容
name.downcase

name.upcase! #改变 name的内容
! #意思就是改变变量本身

name.capitalize
"Cooper".reverse
num = "1"
num.to_i

"harrison " + "malone"
# concatenate a string


puts "harrison"
print "harrison"
# output to terminal as string


puts "my name is harrison\nmalone"  换行行用\n
=> my name is harrison
malone
# non printing character, \n inserts line break in this case
str.chop
移除 str 中的最后一个字符。

str.capitalize
把字符串转换为大写字母显示。

fergus = "christmas tree"
beer = fergus
puts fergus    =>christmas tree
puts beer     =>christmas tree

a = "hello"
puts a.capitalize! => "Hello"

puts a[1] #=> e


a << "world"
puts a   #=> "hello world"
puts a[2,3]  #第3位开始,也可以认为是第二个之后的3个字符
puts a[2..3] #第3位到第4位
a << 33   #加入33就没有用,string不能和interger相加


store them in variables

this_var = 0 # pass interger 0 to the virable this_var
this_string = "a string" # pass string
x = 5.5
badly_named = x * 7  work out 7
    puts "Hello, World!"
  end of variable which is 5.5
nigel = "one " + " "two " + "three.” concatenate

#numbers
1 + 1
# => 2

#整数除小数 或者 小数除整数 ,结果都为小数
2 ** 3
# => 8

123.45.to_i
=> 123.0

123.45.to_s
"123.45"

"sharejs.com-001".to_i


123.1230.to_s
"123.123"

"sharejs.com-001".to_i


#booleans

true
# => boolean
false
# => boolean
true == true
# equal to comparison operator
# => true
true != true
# not equal to comparison operator
# => false



if "a"   #coercion 自动从string 变成 boolean
    puts "ddd"
    end


puts ("THIS IS TEST ").downcase # this is test
"this is test".upcase # THIS IS TEST
a= "hello\b"

puts a
print a




some_var = "hello"
char_arr = some_var.split(::)
each do
# -numbers
#         integers
puts 15/7 # 2 没有余数,不会有小数,因为是整数
puts 15/7.to_f #2.142857142857143

# Ruby的所有datatype都是创建从新的class创建的object
x=6 => x = Integer.new(6)

a= [1,2,3]
b= [4,5,6]
a= a + b
puts a

        floats
-Booleans(true/false)
-symbols(used in hashes)
-nil is nil   in if , nil is false  nil can't calculate

Control Flow
-if/else(beoolean)
-Loop
    -while
    -each do |item|
fruits.each do | fruit |
    puts fruit
end

    each_with_index |item,index| ？？？？？

example
fruits.hash = ["apple", "banana", "orange"]


fruits.hash.each_with_index do | fruit, i |
    puts "I am #{fruit} and my index is #{i}"
end

