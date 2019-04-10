def  test(a1="Ruby", a2="Perl") # 设置参数和默认值
    puts "编程语言为 #{a1}"
    puts "编程语言为 #{a2}"
 end
 puts test "C", "C++"
 puts test

def test
    i = 100
    j = 10
    k = 0 #返回值为最后一行的值
    return 1,2,3 #将返回1，2，3
end
puts test

def sample (*test)
    puts "参数个数为 #{test.length}"
    for i in 0...test.length
       puts "参数为 #{test[i]}"
    end
 end
puts simple（“
 puts sample "Zara", "6", "F"
p "zara".length
# def check_wallet(current_balance, item_price)
#     if (current_balance >item_price)
#         return true
#     else
#         return false
#     end
# end
# puts("dhjkdsfjksdjfk")


# def subr(num1,num2)
#     result = num1 - num2 # you could do # num1 - num2

#     return result    #如果puts在return后,return将没有作用
#     puts(result)
end
# puts subr(9,5)



# def print_welcome()
#     puts("Welcome back to class, hope lunch was tasty")    #return nil
# end
# puts("returned puts #{print_welcome}")


def print_welcome()
    a = "Welcome back to class, hope lunch was tasty"    #return value of a

end
puts("returned puts #{print_welcome}")


#method in a methond

def area_of_rect(length,width)
    return length * width
end

def volume_of_rect_prism(area,height)
    return area * height
end

def volume_prism(len,wid,ht)
    area -

  #  alias语句
  alias 方法名 方法名
  alias 全局变量


def  new_method 'k'
    "h:k"
end

puts new_method ("k")