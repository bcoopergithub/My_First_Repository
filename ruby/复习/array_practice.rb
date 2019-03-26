each
collect
first
last
shuffle

ary = Array.new

(10..15).each do |n|   each是一个method,所以之后要加.
    print n, ' '
end
=> 10 11 12 13 14 15



# ary = [1,'two',3.0]
# puts ary[2]
# a=Array.new or a=[]
array = [1,2,3,4,5]
puts array[-1]   # 5
Array.new(5,1) # Array一定要大写
b = Array.new(5) # [nil, nil, nil, nil, nil] 定义了array的长度
ary.index(obj)：返回数组中第一个等于obj元素的下标；
ary.insert(index,obj)：在指定位置插入对象到数组中；
c = Array.new(5,1) # [1, 1, 1, 1, 1]
Array.new(4) { Hash.new } #=> [{}, {}, {}, {}]
[1,2] << 3   #[1,2,3]
[1,2] + [1,2] #[1,2,1,2]
[1,2,3] - [3,4]  #[1,2]
[1,2,3] & [3,4] #[3]
[1,2,3] | [3,4]     #[1,2,3,4]
[1,2] *2     #[1,2,1,2,1,2]
[1,2] * '--'    #1--2  1和2之后加入任意符号数字或者字母



a = [1,2,3,4,5,6]
puts a.last # 6
puts a.pop  # 6  去除最后一个,返回那一个
print a
puts a.reverse.drop(1).reverse # [1,2,3,4,5]

#指数index
array = [2,34,42,53,66]
array.count { |x| x%2 == 0 } #=> 3
array[2] # 34
array[0,2] #error
array.values_at(0,2,4) # [2, 42, 66]

a.map!{|x| x + "!" }
p a #=>  [ "a!", "b!", "c!", "d!" ]

a[1]    #2
a[0,2]   #[1,2,] 从0号元素到2号元素 不包括2号元素
a[0..2]   #[1,2,3] 从0号元素到2号元素 包括2号元素
a[-2] # 5 倒数第二个元素
a[-2,1] # [5] 从倒数第二个往后一个元素的数组，但不包括那第一    个元素
a[-2,2] # [5,6] 从倒数第二个往后两个元素的数组，但不包括那第二个元素
(1..5) #[1,2,3,4,5]

#数组array的搜索查找
a.find_all{|i| i>3} #[4,5,6] 指[1,2,3,4,5,6] 中>3的所有元素的数组
array = [3, 4]
array << 3      # [3,4,3]
print array
a.max     #5
a.include?(5)       #true boolean问题？
a.inject{|sum,i| sum + i} #21 数组里所有元素的和
nums = Array.new(10) { |e| e = e * 2 } # [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]
a.length #6 数组的元素数量
a.size #6 数组的元素数量
print  [1,2] & [2,3] # 两个数组的集合
print [1,2] - [2,3] # 第一个数组 减去 两个数组的集合
a = 3
b = 4
print a<=>b   #比较两个变量  小于是-1, 0是等于, 1是大于
print [2,3,4,5,6][2,3]  # 等于  从第2个元素后的那个元素起的3个元素

# 替换
a= [2,3,4,5,6]
a[2] = 5    # [2,3,5,5,6]


a = [ "a", "b", "c", "d" ]
a.fill("x") #=> ["x", "x", "x", "x"]
a.fill("z", 2, 2) #=> ["x", "x", "z", "z"]
a.fill("y", 0..1) #=> ["y", "y", "z", "z"]
a.fill { |i| i*i } #=> [0, 1, 4, 9]
a.fill(-2) { |i| i*i*i } #=> [0, 1, 8, 27]

array.replace(other_array)  # 替换数组

# 删除
array.delete_at(index)
ary.delete_if{|item| block}：删除指定条件的元素；
array.length #数组的长度,可能为0
array.pop #删除最后一个元素,并返回这个元素,空就为 nil
array = [2,7,4,0,6,10]
print array.drop(2)   # [4, 0, 6, 10] 删除 前2个元素
args = [ "-m", "-q", "-v", "filename" ]
args.shift # => "-m"
args.shift(2) # => ["-q", "-v"]  返回的删除的元素
args # => ["filename"]

#添加
array.push(obj) #添加一个元素到末尾
a = [ "b", "c", "d" ]
a.unshift("a") # => ["a", "b", "c", "d"]
a.unshift(1, 2) # => [1, 2, "a", "b", "c", "d"]
# 逆转
array = [2,34,42,53,66]

ray.reverse!  # waht's differece?


#整理和打乱
[ 1, 2, 3, 4, 5, 1 ].shuffle # => [5, 1, 3, 4, 1, 2]
a = [ "d", "a", "e", "c", "b" ]
a.sort! # => ["a", "b", "c", "d", "e"]
a # => ["a", "b", "c", "d", "e"]

# loop

array = [2,34,42,53,66]
array.each do |x|
    if x % 2 ==0 #even?
        puts x
    end

end
array = [2,34,42,53,66]
array.each {|x|  puts x+1}  #each后每个x执行action

#or

array = [2,34,42,53,66]
array.each do |x|
    puts x+1
end



 array.each.with_index(3) do |val,index| # index从3开始计
puts val
puts index
 end


array.each_with_index do |val,index|
    if index % 2 ==0
        puts val
    end
end

a=[11,22,31,224,44].each_with_index do |val,index|
    puts "index: #{index} for #{val}" if val < 30
end                                                    # 把if放在action之后可以在同一行并且省掉一个end

#index: 0 for 11
#index: 1 for 22

Class car
fleet_car = []  # 10  in array

new_car = Car.new(BMW,2018,"blckar")
10.times do


    fleet_car.push(new_car)
end

puts fleet_car




[ 1, 1, 3, 5 ] & [ 1, 2, 3 ] # => [1, 3]
[ 1, 2, 3 ] * 3 # => [1, 2, 3, 1, 2, 3, 1, 2, 3]
[ 1, 2, 3 ] * "--" # => "1--2--3"
[ 1, 1, 2, 2, 3, 3, 4, 5 ] - [ 1, 2, 4 ]
# => [3, 3, 5]

[ 1, 2 ] << "c" << "d" << [ 3, 4 ] << [3, 4]
# => [1, 2, "c", "d", [3, 4], [3, 4]]

[ "a", "c" ] == [ "a", "c", 7 ] # => false
[ "a", "c", 7 ] == [ "a", "c", 7 ] # => true
[ "a", "c", 7 ] == [ "a", "d", "f" ] # => false
[ "a", "b", "c" ] | [ "c", "d", "a" ] # => ["a", "b", "c", "d"]
[ "a", nil, "b", nil, "c", nil ].compact # => ["a", "b", "c"]

a = [ "a", "b", "c" ]
a.each {|x| print x, " -- " }
result :
a -- b -- c --

[].empty? # => true
[ 1, 2, 3 ].empty? # => false
[ "a", "b", "c" ].join # => "abc"
[ "a", "b", "c" ].join("-") # => "a-b-c"
[ "w", "x", "y", "z" ].last # => "z"
[ "w", "x", "y", "z" ].last(1) # => ["z"]
[ "w", "x", "y", "z" ][-1] = [z]
[ "w", "x", "y", "z" ].last(3) # => ["x", "y", "z"]

#循环
a = ["a", "b", "c"]
a.cycle(2) { |x| puts x } #



my_array = ['first',
#           'second',   要的code里加comments只有这种方法
            'third',
            'fourth']

array.clear # 数组中移出所有元素
array.empty? #true or false


Ruby迭代器each、map、collect、inject

说明：
each——连续访问集合的所有元素
collect—-从集合中获得各个元素传递给block，block返回的结果生成新的集合。
map——-同collect。
inject——遍历集合中的各个元素，将各个元素累积成返回一个值。







# Array.new(3,true)

# student = nil

# if (student)
#     puts("student exists")
# else
#     puts("There is no student - student was nil")
# end
def 无限月读
    loop do puts "月读"


end
puts "说对了"
