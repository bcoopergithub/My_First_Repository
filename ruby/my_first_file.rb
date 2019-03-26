puts" type your x1" #一定要用puts，因为puts是在第二行输入,print在第一行输入
x1 = gets().chomp.to_i
print"#{x1} Chicken" #去除这行最后的\n
puts" type your y1"
y1=gets().strip.to_i  #省略这行最后的所有空格空行，gets里接收的永远是stringprint('行')
puts"#{y1} Chicken"
result = x1 + y1
puts("this is result #{result}")  #把上面的指代的带入这边

#\n \r \i
#"this is\n my string\n\r"



