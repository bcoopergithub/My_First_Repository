item = 0

(1..5).each do |item|
    item = item + 1
    puts item
end
puts item

(1..5).each do |num|
     puts num
        #item 是局部变量 ,所以在loop外不能呼出
end


puts item
#


name = "Bob"
('T'..'Z').each do |n|

    name = n
end

puts name


total = 0
(1..5).each do |item|
    total = total + item   # 1到5的和
end

puts total

current = 2019
(1..10).each do |current|   # 如果 global变量 和 ||里的变量名字一样 ,那么loop外只能调用global变量,
    #                         这是因为, 在loop里cuurent 被定义成了一个迭代器,而不是一个变量
current = current
end
puts current

current = 2019 # global 变量
(1..5).each do |item|
    current = item + 1
end
puts current   # 6


current = 2019 # global 变量
(1..5).each do |item|
    current = current + 1
end
puts current #2024



