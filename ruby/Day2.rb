
# day 2
puts("waht is the weather today?")
temp = gets().strip.to_i
puts"today's temperature is #{temp}"
if (temp == 0)                      ##### =是赋予变量值,是永久性的.如果是假设,必须要==
    puts("it's zero")
elsif (temp < 0)
    puts("it's freezingly COLD")
elsif (temp <=15)
    puts("It's COLD")
elsif(temp <=28)
    puts("It's WARM")
else
    puts("It's Hot")
end
puts("Enjoy your day")


when 来试试

    puts("waht is the weather today?")
    temp = gets().strip.to_i
    puts"today's temperature is #{temp}"
    case temp
    when 0                    ##### when的条件只能是range或者是datatype或者是具体的值,大小等于
        puts("it's zero")
    when -100..-1
        puts("it's freezingly COLD")
    when 1..15
        puts("It's COLD")
    when 16..28
        puts("It's WARM")
    else
        puts("It's Hot")
    end

    puts("Enjoy your day")


