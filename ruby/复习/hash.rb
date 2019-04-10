# 创建新的hash
hash = {}
puts hash[1] = 2  # 2  建立一个新的key,value组合，返回值为value
# hash的两种表现形式
hash = Hash.new(defult_value) #这种方法设置的默认值只能用一次，当这个key设置了新的value后，所有默认值会失效
#如果想让默认值apply hash 里的每个组,用一下方法
y=Hash.new do |h,k|
        h[k] =[]
end

#加入key和value
hash = {}
hash[:matz] = "The Ruby Language"
hash[:black] = "The Well-Grounded Rubyist"
puts hash # => {:matz=>"The Ruby Language", :black=>"The Well-Grounded Rubyist"}


# h.empty?
h = {}
puts h.empty? #true
h = {cos:"name"}
puts h.empty? #false



hash = {:first_name =>"2",
        :family_name =>"3"
}
puts hash
hash = {first_name:"2",
        family_name:"3"
}
# puts hash


# #根据键位得到value
hash = {first_name:"2",
        family_name:"3"
}
# puts hash[:first_name] #=> 2
#  fetch
hash.fetch(first_name) # fetch只能用于key是string 的情况,不能用于key是symbol的情况


#如果hash的键位是string(只适用于=>的形式)
hash = {"first"=>"2",
        "second"=>"3"
}

#用key找value
hash = {"first"=>"2",
        "second"=>"3"
}
puts hash.values_at("first","second") # 可以同时找好多value 如果没有找到key,则返回nil
puts hash.fetch("first","second") # 只能找一个value,  如果没有找到key则返回error,在设定默认值后，没找到返回默认值

#hash.to_s
h = { "cat" => "feline", "dog" => "canine", "cow" => "bovine" }
p h.to_s # "{\"cat\"=>\"feline\", \"dog\"=>\"canine\", \"cow\"=>\"bovine\"}"

h = { "cat" => "feline", "dog" => "canine", "cow" => "bovine" }
puts h.values_at("bovine")  #=> ["bovine", "feline"]

# #用value找key

h = { "cat" => "feline", "dog" => "canine", "cow" => "bovine" }
puts h.key("feline") # "cat"
puts h.index("feline")


hash = Hash.new('java') #如果用这种方法设置默认值,之后一定要用添加的方法建立hash ,不然就建立一个新的hash了,默认值也不是括号里那个了

hash = { 1 => 100, 'a'  => 200 }


# try_convert 把括号里的东西转化为hash
puts Hash.try_convert(1=>2)   # => {1=>2}
Hash.try_convert("1=>2")   # => nil
Hash.try_convert([1,2,3,4]) # => nil
# store
hash = { 1 => 100, 'a'  => 200 }
hash.store("d",42)  #
puts hash # => {1=>100, "a"=>200, "d"=>42}

# #hash的表达方式
H = Hash.new("This is my first hash instance")
H = {
       "a" => 100,
      "b" => 200
}
H = {
       "a": 100,
       "b": 200
}


puts H["a"]
puts H["a_ddfdf"]    #赋值的时候键位系需要是string ""

h3=h2 创建一个和h2相同的hash,但是这两个hash的值是互相联系的,动了其中一个,另一个也会变动
h3 = h2

# 在一行内完成hash的创建编排
Hash["a", 100, "b", 200]             #=> {"a"=>100, "b"=>200}
Hash[ [ ["a", 100], ["b", 200] ] ]   #=> {"a"=>100, "b"=>200}
Hash["a" => 100, "b" => 200]         #=> {"a"=>100, "b"=>200}

#展示hash的key，或者value
hash = Hash["a", 100, "b", 200]
puts hash.keys #=> a,b
puts hash.values #=> 100,200

#delete /delete_if
H = Hash["a" => 100, "d" =>500, "c" =>300, "b" => 200,]
puts H.delete("z") { |key| "#{key} not found" } #如果没找到，就显示"not found"
puts H.delete("d") # 500
puts H # {"a"=>100, "c"=>300, "b"=>200}



H = Hash["a" => 100, "d" =>500, "c" =>300, "b" => 200,]
puts H.delete_if {|k,v| v>200} # 返回的是剩下的H
# shift 删除hash的第一组数据
H = Hash["a" => 100, "d" =>500, "c" =>300, "b" => 200,]
puts H.shift # 返回删除的那组数据
puts H # {"d"=>500, "c"=>300, "b"=>200}

H = Hash["a" => 100, "d" =>500, "c" =>300, "b" => 200,]
H.each do |k,v|  # 等效于each_pair
        if v >200
        puts k
        puts v
        puts H[k]  #在hash.each_key用的比较多,因为未知不包含value
        end
end

H = Hash["a" => 100, "d" =>500, "c" =>300, "b" => 200,]
puts H.length # length = size
puts H.size
H.each_key do |k|  #等效 H.keys.each do |k|
        if k>"a"   #未知数只能是Key,但是仍然可以puts value,
        puts k
        puts H[k]
        end
end


p [{:number => "1"}, {:number => "2"}, {:number => "3"}].map(&:first) # [[:number, "1"], [:number, "2"], [:number, "3"]]
.map(&:last) # => ["1", "2", "3"]

p [{:odd => "1", :even => "2"}, {:odd => "3", :even => "4"}, {:odd => "5", :even => "6"}].map(&:first).map(&:last)   #.map(&:first)只取每个hash里的第一组数组 # .map(&:last显示value的array
# => ["1", "3", "5"]


#判断hash是否有特定的key

 # has_value? = value?
h = { "a" => 100, "b" => 200 }
h.has_value?(100)   #=> true
h.has_value?(999)   #=> false

# has_key ?
h = { "a" => 100, "b" => 200 }
h.has_key?("a")   #=> true
h.has_key?("z")   #=> false

hash = Hash["a" => 100, "d" =>500, "c" =>300, "b" => 200,] #/  hash.has_key?(key) = hash.key?(key)
puts hash.include?("d")  # true  #问的是有没有这个key
puts hash.member?("d")
puts hash.has_key?("d")
puts hash.key?("d")

# map = collect 把hash变成array,两两分组
hash = { id: 123, name: "test" }
print hash.collect{|key, v| [key.to_s, v] }# [["id", 123], ["name", "test"]]
print [["id", 123], ["name", "test"]].to_h # {"id"=>123, "name"=>"test"}

h = { a: 1, b: 2, c: 3 }
puts h.transform_values {|v| v * v + 1 }  #等效于 h.each_value {|v| v * v + 1 }  ,
puts h # {:a=>1, :b=>2, :c=>3}

puts h.transform_values！ {|v| v * v + 1 }  #h.transform_values！会改变hash
puts h # {:a=>2, :b=>5, :c=>10}

H = Hash["a" => 100, "d" =>500, "c" =>300, "b" => 200,]
H.each_value |v|  #等效 H.values.each do |k|
        puts v
end
# 根据条件筛选key,value对
h.detect {|k,v| v == "2"}
#=> [:b, "2"]


print h.collect{|key,v| v * v + 1 }  collect

# 把hash当做array来处理，求交集，相加，相减

h1 = {1=>'one', 2=>'two', 3=> 'three',4=> 'four'}
puts h1.convert
puts h1.invert # {"one"=>1, "two"=>2, "three"=>3, "four"=>4}
puts h1.convert
h2 = {1=>'one', 3=>'two', 4=> 'four',5=> 'five'}
puts h1.eql?(h2) # h1和h2的内容相同吗，false
puts h1.merge(h2) 创建一个新的hash为h1和h2的和   #merge是两个hash的组合
puts h1.merge!(h2) 把h2塞到h1中
p( h1.keys & h2.keys )                 # [1, 3, 4]
p( h1.values & h2.values )            #["one", "two", "four"]
p( h1.keys+h2.keys )                    #[1, 2, 3, 4, 5, 1, 3, 4]  数字可以重复
p( h1.values-h2.values )                 #["three"]  h1有的，但h2没有的value
p( (h1.keys << h2.keys) )               #把h2里面的keys打包成一个array,放到h1的key所组成的array中
p( (h1.keys << h2.keys).flatten)        #[1, 2, 3, 4, 5, 1, 3, 4] 取消括号

#hash.flatten
a =  {1=> "one", 2 => [2,"two"], 3 => "three"}
a.flatten    # => [1, "one", 2, [2, "two"], 3, "three"]  #把keys和values全变成array里的元素，然后去掉一层括号
a.flatten(2) # => [1, "one", 2, 2, "two", 3, "three"]


#replace

h = { "a" => 100, "b" => 200 }
puts h.index
h.replace({ "c" => 300, "d" => 400 })   #=> {"c"=>300, "d"=>400}

#invert # key变成value，value变成key
puts {"a"=> "1", "b"=>"2", "c"=>"3"}.invert
=> {1=>:a, 2=>:b, 3=>:c}

=> {1=>:a, 2=>:c}

#invert还有检查hash的功能

h = { a: 1, b: 3, c: 4 , d: 1 }   #hash里有没有key对应相同的value呢？
puts h.invert.invert == h #=> false

# 有没有两个以上的key对应相同的value?
h = { a: 1, b: 3, c: 1, d: 1 }
puts h.size == h.invert.size #=> false

# 没有两个相同的key是相同value
h = { a: 1, b: 3, c: 1,  }
puts h.size == h.invert.size #=> true

#用index来查找hash中的value
h = {:a => "val1", :b => "val2", :c => "val3"}
keys = h.keys {:a=>"val1", :b=>"val2", :c=>"val3"}
print h  #
h[keys[0]] # "val1"
h[keys[2]] # "val3"


#  .find_index 根据key和value找对应的index
footnotes = { "apple" => "is a fruit", "cat" => "is an animal", "car" => "a transport"}
puts footnotes.find_index { |k,v| v== "is a fruit" } #=> 1


# hsh.clear：清空Hash

#keep_if
h1 = {2=>'one', 1=>'two', 0=> 'three',7=> 'four'}
h1.keep_if do |key,value|
        key>2
end
puts h1 #{7=>"four"}

puts h1.select {|key,value| key>2}   # select = keep_if


# reject
h1 = {2=>'one', 1=>'two', 0=> 'three',7=> 'four'}


puts h1.reject {|key,value| key>2}
# any?
h.any |key,value| #any就是边里前面的东西，然后看有没有符合条件的，返回boolean
h = {:a => 1, :c => 3, :d => 4}
puts [:a, :b, :e].any? {|k| h.key?(k)} # h里存在这个key吗？在abc 中   true
h = {:a => 1}; [:x].any? {|k| h.key?(k)}   #h里存在x这个key吗？ true
h = {:a => 1}; [:x, :a].any? {|k| h.key?(k)} # h 里存在x或者a中任意一个key吗？ #false
#
puts h.key?(:a) || h.key?(:b) || h.key?(:e) 存在a,b,c,任意一个key 吗？

#sort
h1 = {2=>'one', 1=>'two', 0=> 'three',7=> 'four'}
print h1
print h1.sort # [[0, "three"], [1, "two"], [2, "one"], [7, "four"]]  变成了array
#
print [[0, "three"], [1, "two"], [2, "one"], [7, "four"]].to_h

hsh.sort_by{|key,value| value} #按照value的顺序排列

puts "#{H['a']}"   #H['a']就是H的键a所指的value
#hash常用的方法  # key冒号+value
# 您可以使用任何的 Ruby 对象作为键或值，甚至可以使用数组，如下实例所示
H = {[1,"jan"] => "January"}
puts H[[1,"jan"]]



#hash里添加value,key的 4 种方法

hash.merge!(key: value)
hash.store(key,value)
hash[:key] = value
h[:key] << value



# Array({:a => "a", :b => "b"})

# zoo = {
# name: 'Melbourne Zoo',
# number_of_animals: 3290}




#hash in a array
nadal= {name:"nadalname",         #必须是string 或者 interger, key和冒号之间不能加空格
       age:29,
       height:180}
federre = {name:"federrename",
        age:36,
        height:178}
djok= {name:"djokname",
        age:41,
        height:188}
player = [nadal, federre, djok]

#get index by the value of hash in a array
index = player.index {|h| h[:name] =="federrename"} # 把hash看做是array里的一个元素，返回的结果是一个hash
puts index  # 1
# 取array中hash的最大值和最小值所在的hash
students = [
        {
            name: "Mary Jones",
            test_score: 80,
            sport: "soccer"
        },
        {
            name: "Bob Kelly",
            test_score: 95,
            sport: "basketball"
        },
        {
            name: "Kate Saunders",
            test_score: 99,
            sport: "hockey"
        },
        {
            name: "Pete Dunst",
            test_score: 88,
            sport: "football"
        }]
        puts students[0][:name]   # 找出array中的array或者hash,不是  student[0[:name]]


    puts students.max_by{|k| k[:test_score] }  #显示test_score最高的那组hash
    puts students.max_by{|k| k[:test_score] }[:name] #显示test_score最高的那组hash中的人名


people = [
        {
          'firstname' => ' InReach',
          'companyid' => 1042,
          'type' => 'client',
          'lastname' => 'IT Solutions',
          'id' => 1498,
          'companyname' => 'InReach IT Solutions'
        },
        {
          'firstname' => ' Neil',
          'companyid' => 1589,
          'type' => 'client',
          'lastname' => 'Ssmith',
          'id' => 3132,
          'companyname' => 'White Staffing Management'
        },
        {
          'firstname' => 'Zeeshan',
          'companyid' => 1867,
          'type' => 'client',
          'lastname' => 'Jones',
          'id' => 4174,
          'companyname' => 'Staff247'
        }
      ]
      puts people.first['firstname']


      puts people.select {|x| x['id'] >2000 }    #不应该放people['id']



# accoc 根据key找 数组& rassoc根据value找 数组

puts h = { "cat" => "feline", "dog" => "canine", "cow" => "bovine" }.assoc('cat')
puts h = { "cat" => "feline", "dog" => "canine", "cow" => "bovine" }.rassoc('canine')

# compare_by_identity? 总之，用了这个以后，
h1 = { "a" => 100, "b" => 200, :c => "c" }
h1[:c]        #=> 100
h1.compare_by_identity
h1.compare_by_identity? #=> true
print h1["a"]
puts h1[:c]


h1 = {2=>'one', 1=>'two', 0=> 'three',7=> 'four'}
puts h1.keys.first



# h.hash = print hash 有没有都无所谓
a = [ "a", "b" ]
c = [ "c", "d" ]
h = { a => 100, c => 300 }
print h
h[a]       #=> 100
a[0] = "z"
print h # {["z", "b"]=>100, ["c", "d"]=>300}


# h.rehash



# 把array转化为hash
Hash["a", 100, "b", 200]             #=> {"a"=>100, "b"=>200}
Hash[ [ ["a", 100], ["b", 200] ] ]   #=> {"a"=>100, "b"=>200}
Hash["a" => 100, "b" => 200]         #=> {"a"=>100, "b"=>200}

# h.zip   array转换成hash的另一种方式
keys = ['BO','BR']
values = ['BOLIVIA','BRAZIL']

Hash[keys.zip(values)]
# => {"BO"=>"BOLIVIA", "BR"=>"BRAZIL"}

keys = ['BO','BR']
values = ['BOLIVIA','BRAZIL']
print keys.map(1)
print keys.map(&:to_sym) #[:BO, :BR]

puts keys.map(&:to_sym).zip(values).to_h # {:BO=>"BOLIVIA", :BR=>"BRAZIL"}
print keys.zip(values) # [["BO", "BOLIVIA"], ["BR", "BRAZIL"]]
puts [["BO", "BOLIVIA"], ["BR", "BRAZIL"]].to_h # {"BO"=>"BOLIVIA", "BR"=>"BRAZIL"}

#hash转换为array
hash = {6=>5, 2=>1, 4=>3}
hash.to_a #  [[5, 6], [1, 2], [3, 4]]



h=Hash.new
x=[1,2,3]
h[x]=4
x<<4
p h # => {[1, 2, 3, 4]=>4} 修改了key之后，都需要rehash，不然就会丢失key
h.rehash
h[x] #=> 4