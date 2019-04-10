
s1 = [ "colors", "red", "blue", "green" ]
s2 = [ "letters", "a", "b", "c" ]
s3 = "foo"
a  = [ s1, s2, s3 ]
print a


#combinitaion = permutation 列出array里元素中1个元素2个3个或无数个元素    搭配的所有组合
a = [1, 2, 3, 4]
print a.permutation(1).to_a
print a.permutation(2).to_a # [[1, 2], [1, 3], [1, 4], [2, 1], [2, 3], [2, 4], [3, 1], [3, 2], [3, 4], [4, 1], [4, 2], [4, 3]]
print a.permutation(3).to_a #ermutation  取[1,2],同时取[2,1]
print a.permutation(4).to_a
a.combination(1).to_a  #=> [[1],[2],[3],[4]]

a.combination(2).to_a  #=> [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]] combination只取从小到大的数组
a.combination(3).to_a  #=> [[1,2,3],[1,2,4],[1,3,4],[2,3,4]]
a.combination(4).to_a  #=> [[1,2,3,4]]
a.combination(0).to_a  #=> [[]] # one combination of length 0
a.combination(5).to_a  #=> []   # no combinations of length 5
a.repeated_combination(4).to_a #包含所有相同的元素组合列如[1,1],[2,2,2],[3,3,3,3]




# product
[1,2,3].product([4,5])

[1,2,3].product([4,5])     #=> [[1,4],[1,5],[2,4],[2,5],[3,4],[3,5]]
[1,2].product([1,2])       #=> [[1,1],[1,2],[2,1],[2,2]]
[1,2].product([3,4],[5,6]) #=> [[1,3,5],[1,3,6],[1,4,5],[1,4,6],
                           # =>[2,3,5],[2,3,6],[2,4,5],[2,4,6]]
[1,2].product()            #=> [[1],[2]]
[1,2].product([])          #=> []

#assoc and rassoc   根据第一个和第二个数据找到双组数列数据中的数据
puts a.assoc("letters")
picks = [
    ["AAPL", "buy","ddd"],
    ["GOOG", "sell","aaa"],
    ["MSFT", "not_sell","ccc"]
  ]
 print picks.rassoc("sell") # => ["GOOG", "sell", "aaa"]
 print picks.assoc("AAPL") # => ["AAPL", "buy", "ddd"]

puts (1..10).to_a  #转换成数列

# collect = map  修改数组而变成一个新的数组

a = [1,2,3,4,5]
print a.collect {|x| 10*x}  #collect打印出来是个数组，而each打印出来就是数字

a.each {|x| print 10*x}   #区别就是each并没有改变数组 ,puts 放在大括号里边
print b
arr1 = ["name2", "class2"]
arr1.map! {|num| num + "and"}  #collect!和map!改变原来数组而不用创建新的数组
puts arr1

a = [ "a", "b", "c", "d" ]
print a.collect.with_index {|x|} #=> [nil, nil, nil, nil]
print a.collect.with_index {|x, index| x if index!=2} #=>["a", "b", nil, "d"]


#pack
print ["bcdef"].pack("a4") # => "bcde" 先变为string 从第一个字母数起的第几个字母
#flatten = flatten!铲平多余中括号,只留一个最外围的中括号
s = [ 1, 2, 3 ]           #=> [1, 2, 3]
t = [ 4, [5, 6, [7, 8] ]]   #=> [4, 5, 6, [7, 8]]
a = [ 0,1, [9, 10 ]]       #=> [[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10]
b = s+t+a
print b
print "b.flatten #{b.flatten}"                 #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print "b.flatten #{b.flatten(1)}"   # 除了最外围的中括号,铲平最外围的里的第一层一个中括号



#cicle 循环
a = ["a", "b", "c"]
print a.cycle { |x| puts x }     # print, a, b, c, a, b, c,.. forever.
a.cycle(2) { |x| puts x }  # print, a, b, c, a, b, c. 2个循环

# replace
a = [ "a", "b", "c", "d", "e" ]
a.replace([ "x", "y", "z" ]) # => ["x", "y", "z"]
a # => ["x", "y", "z"]

#index 用value找index

a = ["A", "B", "C"]
puts a.index("B")


#value_at  用index找特定value
a = [ "a", "b", "c", "d", "e" ]

print a #at 只能找一个数, 而value_at可以找到很多数
a.values_at(1, 3, 5) # => ["b", "d", "f"]
a.values_at(1, 3, 5, 7) # => ["b", "d", "f", nil]
a.values_at(-1, -3, -5, -7) # => ["f", "d", "b", nil]
a.values_at(1..3, 2...5) # => ["b", "c", "d", "c", "d", "e"]

#join
[ "a", "b", "c" ].join        #=> "abc"//后面没有参数，默认把数组中的每个元素全部组合到一起
[ "a", "b", "c" ].join("-")   #=> "a-b-c//以参数后面的字符串为连接点连接数组

#split

print "foo,bar,baz".split(",")
print " now's the time".split #把sring变成array
print"mellow yellow".split("ello") # split()括号里的就是以什么作为间隔
print "mellow,yellow".split(//,4)  分成四项

#select
puts arr.each_index.select{|i| i >=2 and arr[i].length == 1} # each, each_index, each_with_index

arr = [1,2,3,4]
print arr.select{|i| i%2 == 0}
# => [2,4]  select返回符合条件的所有记录

#find = detect



arr = [1,2,3,4]
puts arr.select{|i| i%2 == 0} # => [2,4] select返回符合条件的全部元素
puts arr.find{|i| i%2 == 0} # => [2] find返回符合条件的第一个元素
arr = [1,2,3,4]
puts arr.bsearch{|i| i%2 == 0} # =>[4] besearch返回符合条件的最靠近array两端的元素


#shuffle
arr = [1,2,3,4]



print arr.shuffle # shuffle把数字打乱

#sort
arr = [2,3,1,4]
print arr.sort      #sort把array有小到大排列
d
#inject
arr = [1,2,3,4]
puts arr.inject(0) { |result, element| result + element } #小括号里意思是result起始数为0,如果inject小括号里不带参数,那result里的起始为数组里的第一个数
puts arr.inject{ |result, element| result + element } #循环3次,结果是一样的
[1, 2, 3, 4, 5, 6].inject([]) do |result, element|
    result << element.to_s if element % 2 == 0
    result
end
    puts result
  array # => ["2", "4", "6"]


#reduce reduce完全可以替代inject的用法 ,reduce还有比inject更简洁的用法
puts (1..5).reduce(0) { |sum, value| sum + value}

puts (1..5).reduce(:+)   # 1到5递加
puts (1..5).reduce(:-)   # 1到5递减

# reject 展示所有不符合条件的项

a = [1,2,3,4]
a.reject {|n| n > 2}
#=> [1, 2]


# reject! 在array里删除所有符合条件的项
a=[1,2,3,5]a.reject! {|x| x<4}p a #[5]

#times
10.times { |i| puts "hello #{i}" }

# uniq

a = [ "a", "a", "b", "b", "c" ]
a.uniq # => ["a", "b", "c"]     把重复的值合并成不重复的值

#group_by

y = [{:a=>"2017-01-01", :b=>"2", :c=>"1"}, {:a=>"2017-01-01", :b=>"2", :c=>"2"}, {:a=>"2017-01-02", :b=>"5", :c=>"1"}]
p = y.group_by { |g| g[:a]}
print p

array =  [{"school_id"=>"1",
    "plan_type"=>"All",
    "view"=>"true",
    "create"=>"true",
    "approve"=>"true",
    "grant"=>"true",
    "region_id"=>nil},
   {"school_id"=>"1",
    "plan_type"=>"All",
     "edit"=>"true",
     "region_id"=>nil},
   {"school_id"=>"2",
    "plan_type"=>"All",
    "edit"=>"true",
    "grant"=>"true",
    "region_id"=>nil}]

print array.group_by { |e| e["school_id"] }  #group by就是决定根据哪个key的值进行分组

{"1"=>[{"school_id"=>"1", "plan_type"=>"All", "view"=>"true", "create"=>"true", "approve"=>"true", "grant"=>"true", "region_id"=>nil}, {"school_id"=>"1", "plan_type"=>"All", "edit"=>"true", "region_id"=>nil}], "2"=>[{"school_id"=>"2", "plan_type"=>"All", "edit"=>"true", "grant"=>"true", "region_id"=>nil}]}root@DESKTOP-DFNAB83:/mnt/c/Users/gjwtc/Desktop/gentech#



print a.fill(22)   # => ["x", "x", "x", "x"] 已经把 array改掉了




#zip 装封起来

a = ["a", "b", "c"]
b = [ "a", "a", "b", "b", "c" ]
print a.zip(b) #[["a", "a"], ["b", "a"], ["c", "b"]]

a.zip
# => [["a"], ["b"], ["c"]]

a1 = ["a", "b", "c"]
a2 = [1, 2, 3]
a3 = ["x", "y", "z"]
a4 = [7, 8, 9]
a1.zip(a2, a3, a4)
# => [["a", 1, "x", 7], ["b", 2, "y", 8], ["c", 3, "z", 9]]

a = [1,2]
b = [3,4,5]
a.zip(b)
=> [[1, 3], [2, 4]] #zip是以a为主体的

a = [1,2,3]
b = [4,5]
a.zip(b)
=> [[1,4], [2,5], [3, nil]]  #

a = 1..5
b = 6..10
a.zip(b)
=> [[1, 6], [2, 7], [3, 8], [4, 9], [5, 10]]
#max

#min

#first

相当于array[0]
#last

相当于array[-1]

# empty?

[].empty? # => true
[ 1, 2, 3 ].empty? # => false




# concat 其实就是+号
[ "a", "b" ].concat( ["c", "d"] ) # => ["a", "b", "c", "d"]

#  compact
[ "a", nil, "b", nil, "c", nil ].compact # => ["a", "b", "c"]

# count   数一下符合要求的元素有多少个
[1, 2, 3, 4].count(3) # => 1
[1, 2, 3,3, 4].count(3) # => 2
[1, 2, 3, 4].count {|obj| obj > 2 } # => 2
[ "a", "b", "c" ].compact  #=> ["a", "b", "c"]
puts [ "a", "b", "c" ].compact!           #=> nil

#send  传送一个方法给之前的对象用
= obj.my_method(3) = obj.send("my_method", 3)  obj.send(:my_method, 3)
str.upcase =  str.send("upcase")

arr = [1,2,3,4,5]
puts "what you want to request"
request = gets.strip
puts arr.send(request)


#respond_to?(request)  意思是request有对应的命令

ary = Array.new#建立一个空Array

(10..15).each do |n|   each是一个method,所以之后要加.
    print n, ' '
end
# => 10 11 12 13 14 15

#keep 保留

[1, 2, 3, 4, 5, 6].keep_if { |a| a < 4 } #=> [1, 2, 3] 返回值为 1,2,3
arr                       #=> [1, 2, 3]



# ary = [1,'two',3.0]
# puts ary[2]

array = [1,2,3,4,5]
puts " total = array.last #{array.last} + array[1] #{array[1]} "



# Initialise an array with the words "I","LOVE","RUBY"
# Assemble each word in the array into a single string using concatenation.
# Print the result.
array = ["I", "Love", "Ruby"]
print array.join('我是间隔',)

# Beast mode++: Use a loop to print each value of the numbers array - in reverse!

foo = [55, 2, 77]
puts foo.index(77)
bar = [4, 5, 62]
baz = [7, 85, 93]
array = foo+bar+baz

index = 0

while index <=array.length

    puts array.reverse[index]
    index += 1
end
arr = ["abc", "d", "efg", "h", "abcde", "k"]
puts arr.each_index.select{|i| i >=2 and arr[i].length == 1} # each, each_index, each_with_index
print ['12','34','35','231'].join(', ') /
print ['12','34','35','231']*","


# 创建新的array

# a=Array.new or a=[]
Array.new(5,1) # Array一定要大写 [1,1,1,1,1]
b = Array.new(5) # [nil, nil, nil, nil, nil] 定义了array的长度'
puts Array.new(3){ |index| index ** 2 }  #括号里表示array有几个元素
a = Array.new
a[4] = "4";                 #=> [nil, nil, nil, nil, "4"]
a[0, 3] = [ 'a', 'b', 'c' ] #=> ["a", "b", "c", nil, "4"]
a[1..2] = [ 1, 2 ]          #=> ["a", 1, 2, nil, "4"]
a[0, 2] = "?"               #=> ["?", 2, nil, "4"]
a[0..2] = "A"               #=> ["A", "4"]
a[-1]   = "Z"               #=> ["A", "Z"]
a[1..-1] = nil              #=> ["A", nil]
a[1..-1] = []               #=> ["A"]
a[0, 0] = [ 1, 2 ]          #=> [1, 2, "A"]
a[3, 0] = "B"               #=> [1, 2, "A", "B"]

c = Array.new(5,1) # [1, 1, 1, 1, 1]
Array.new(4) { Hash.new } #=> [{}, {}, {}, {}] = Array.new(4,Hash.new)
a[0]['cat'] = 'feline'






a = [1,2,3,4,5,6]
puts a.last # 6
puts a.pop  # 6  去除最后一个,返回那一个
print a
puts a.reverse.drop(1).reverse # [1,2,3,4,5]

# 指数index
array = [2,34,42,53,66]
array.count { |x| x%2 == 0 } #=> 3
array[2] # 34
array[0,2] #error
array.values_at(0,2,4) # [2, 42, 66]
ary.index(obj)：返回数组中第一个等于obj元素的下标；
ary.insert(index,obj)：在指定位置插入对象到数组中；
a.map!{|x| x + "!" }
p a #=>  [ "a!", "b!", "c!", "d!" ]

a[1]    #2
a[0,2]   #[1,2,] 从0号元素到2号元素 不包括2号元素
a[0..2]   #[1,2,3] 从0号元素到2号元素 包括2号元素
a[-2] # 5 倒数第二个元素
a[-2,1] # [5] 从倒数第二个往后一个元素的数组，但不包括那第一    个元素
a[-2,2] # [5,6] 从倒数第二个往后两个元素的数组，但不包括那第二个元素
(1..5) #[1,2,3,4,5]


# 数组array的搜索查找
a.find_all{|i| i>3} #[4,5,6] 指[1,2,3,4,5,6] 中>3的所有元素的数组
print array
a.max     #5
a.include?(5)       #true boolean问题？
a.inject{|sum,i| sum + i} #21 数组里所有元素的和
nums = Array.new(10) { |e| e = e * 2 } # [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]
a.length #6 数组的元素数量
a.size #6 数组的元素数量
print  [1,2] & [2,3] # 两个数组的集合

a = 3
b = 4
print a<=>b   #比较两个变量  小于是-1, 0是等于, 1是大于
print [2,3,4,5,6][2,3]  # 等于  从第2个元素后的那个元素起的3个元素

# 替换
a= [2,3,4,5,6]
a[2] = 5    # [2,3,5,5,6]
#fill
a = [ 11, 22, 33, 44 ]
print a.fill(1) { |i| i*i }       #=> [11, 1, 4, 9] 从index 1开始 替换成幂数

print a.fill(22) 全部换成22
print a.fill("z", 2, 2)   #从index 2开始后的两位替换
a.fill("y", 0..1)        #=> ["y", "y", "z", "z"]  #从index 0替换到 index 1
a.fill { |i| i*i }       #=> [0, 1, 4, 9] 替换成幂数

# array.map.with_index

a = [ "a", "b", "c", "d" ]
a.fill("x") #=> ["x", "x", "x", "x"]
a.fill("z", 2, 2) #=> ["x", "x", "z", "z"]
a.fill("y", 0..1) #=> ["y", "y", "z", "z"]
a.fill { |i| i*i } #=> [0, 1, 4, 9]
a.fill(-2) { |i| i*i*i } #=> [0, 1, 8, 27]

array.replace(other_array)  # 替换数组

# 删除


a = [ "a", "b", "b", "b", "c" ]
a.delete("b") # => "b"  #把所有b 全部删除
puts a # => ["a", "c"]
a.delete("z") # => nil
a.delete("z") { "not found" } # => "not found"
array.length #数组的长度,可能为0
array.pop #删除最后一个元素,并返回这个元素,空就为 nil

array = [2,7,4,0,6,10]

puts array.delete_at(5) # 删除index位置的元素
puts array.delete_if{|elem| elem<5} # 删除指定条件的元素,并返回剩下的元素
puts array.drop_while {|i| i<3}  # drop_while 只会过滤掉第一符合要求元素之前的元素,不会过滤符合要求元素之后的任何元素
puts array.drop(2)   # [4, 0, 6, 10] 删除 前2个元素,返回剩下的元素
args = [ "-m", "-q", "-v", "filename" ]
args.shift # => "-m" 删除前一个元素
args.shift(2) # => ["-q", "-v"]  删除前两个元素,并返回的删除的元素
args # => ["filename"]

# 添加
array.push(obj) #添加一个元素到末尾
a = [ "b", "c", "d" ]
a.unshift("a") # => ["a", "b", "c", "d"] #添加一个元素到开始
array = [3, 4]
array << 3      # [3,4,3]
array<<"f"<<2
puts array # [3,4,3,f,2]
array.clear #清空数组

# 数组运算
aaa = [" aa ",4,5," bb "]
bbb = [4,1,3,2,5]
print aaa + bbb,"\n"        #[" aa ", 4, 5, " bb ", 4, 1, 3, 2, 5]
print aaa*2,"\n"            #[" aa ", 4, 5, " bb ", " aa ", 4, 5, " bb "]
print bbb - aaa             #[1, 3, 2]
print aaa | bbb,"\n"        #[" aa ", 4, 5, " bb ", 1, 3, 2]
print aaa & bbb,"\n"        #[4, 5]
print aaa.reverse,"\n"      #[" bb ", 5, 4, " aa "]
print bbb.sort.reverse,"\n" #[5, 4, 3, 2, 1]

# 数组的加减乘除

[1,2] << 3   #[1,2,3]
[1,2] + [1,2] #[1,2,1,2]
[1,2,3] - [3,4]  #[1,2]
[1,2,3] & [3,4] #[3]
[1,2,3] | [3,4]     #[1,2,3,4]
[1,2] *2     #[1,2,1,2,1,2]
[1,2] * '--'    #1--2  1和2之后加入任意符号数字或者字母
[ 1, 2, 3 ] * "--" # => "1--2--3"
[ 1, 1, 2, 2, 3, 3, 4, 5 ] - [ 1, 2, 4 ]
# => [3, 3, 5]
[ 1, 2 ] << "c" << "d" << [ 3, 4 ] << [3, 4]
# => [1, 2, "c", "d", [3, 4], [3, 4]]
[ "a", "c" ] == [ "a", "c", 7 ] # => false
[ "a", "c", 7 ] == [ "a", "c", 7 ] # => true
[ "a", "c", 7 ] == [ "a", "d", "f" ] # => false
print [1,2] - [2,3] # 第一个数组 减去 两个数组的集合
[ 1, 1, 2, 2, 3, 3, 4, 5 ] - [ 1, 2, 4 ]  #=>  [ 3, 3, 5 ]

# 两个array相等吗?
[ "a", "a", "c" ]    <=> [ "a", "b", "c" ]   #=> -1
[ 1, 2, 3, 4, 5, 6 ] <=> [ 1, 2 ]            #=> +1
[ 1, 2 ]             <=> [ 1, :two ]         #=> nil
[ "a", "c" ]    == [ "a", "c", 7 ]     #=> false
[ "a", "c", 7 ] == [ "a", "c", 7 ]     #=> true
[ "a", "c", 7 ] == [ "a", "d", "f" ]   #=> false

# 逆转
array = [2,34,42,53,66]
print array.reverse_each {|x| print x, " " }
array.reverse #不改变array本身
array.reverse!  # 改变array

a = [ "a", "b", "c" ]
print a.reverse_each {|x| print x, " " }
# 整理和打乱
[ 1, 2, 3, 4, 5, 1 ].shuffle # => [5, 1, 3, 4, 1, 2]
a = [ "d", "a", "e", "c", "b" ]
print bbb.sort,"\n"         #[1, 2, 3, 4, 5]
a.sort! # => ["a", "b", "c", "d", "e"]
a # => ["a", "b", "c", "d", "e"]

# loop

array = [2,34,42,53,66]
array.each { |x| print  x % 2 ==0} # true true true false true

array = [2,34,42,53,66]
array.each {|x|  puts x+1}  #each后每个x执行action 有do的话就不用{} 此时执行的动作放到第二行去,也不用end了

#or
count = 0
array = [2,34,42,53,66]
array.each do |x|
    if x == 42
        puts "哈哈"
    end
puts count                 # 就是一个loop,会运行array.lenth次,每一次运行会读取array的元素,
count = count + 1

end


array = [2,34,42,53,66]
array.each.with_index do |val,index| # 可以设定index的初始值，index从3开始计   do 就是由val和index两个做一下动作
    puts val if index %2 ==0
end

array = [2,34,42,53,66]
array.each_with_index do |val,index|   # 动作里还可以加loop,不可以设定index的初始值
    if index % 2 ==0
        puts val
    end
end

array = [2,34,42,53,66,77,88]
array.each_with_index {|val,index| puts value if val >30 }  # 动作里还可以加loop


a=[11,22,31,224,44].each_with_index do |val,index|
    puts "index: #{index} for #{val}" if val < 30
end                                                    # 把if放在action之后可以在同一行并且省掉一个end

#index: 0 for 11
#index: 1 for 22

# array里有hash
a = Array.new(2, Hash.new)
a[0]['cat'] = 'feline'
print a         #  [{"cat"=>"feline"}, {"cat"=>"feline"}]

a = [1,2,3,4]
puts Hash[*a]

a=[ [:foo, :bar],[1,2,]]
puts a.to_h
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

a = [ "a", "b", "c" ]
a.each do |x|
    print x, " -- "   #   这个表达式只能在x迭代器中使用
end

[1,2,3]*","
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




说明：
each——连续访问集合的所有元素
collect—-从集合中获得各个元素传递给block，block返回的结果生成新的集合。
map——-同collect。
inject——遍历集合中的各个元素，将各个元素累积成返回一个值。







 puts Array.new(3,true) # true true true

# student = nil # nil 是false

# if (student)
#     puts("student exists")
 else
#     puts("There is no student - student was nil")
end
# "There is no student - student was nil"


def 无限月读
    loop do
        puts "月读"
end
无限月读
puts "说对了"


arr = [ [1, 4, "Hello"], [-54, false, "Ruby"] ]

arr.each{ |child_arr|
    child_arr.each { |child_child_value|   # 每一个child array再执行child_arr.each
     puts child_child_value
  }
}

a = {x: 1, y: 2}
b = {y: 3, z: 4}
print a.zip(b）