
array = [2,34,42,53,66]
array.each.with_index do |val,index| # index从3开始计   do 就是由val和index两个做一下动作
    puts val if index %2 ==0
end

array = [2,34,42,53,66]
array.each_with_index do |val,index|   # 动作里还可以加loop,不可以设定index的初始值
    if index % 2 ==0
        puts val
    end
end
