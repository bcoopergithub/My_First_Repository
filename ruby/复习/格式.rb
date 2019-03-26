#ruby的规范格式

# 逗号之前不要加空格
# !something  不要加空格
# () []里不要加空格
# #{}也不用加空格

# (0..9)不要加空格


# 如果if ,while后条件太多,可以空行
#列如
#if (reservation_alteration.checkin == reservation.start_date &&
reservation_alteration.checkout == (reservation.start_date + reservation.nights))

redirect_to_alteration(reservation_alteration)
end

# end之后要空一行

#method之间只要空一行

#method中 隔离定义method 和逻辑运算部分要空一行

#class 和module的名字都要用CamelCase

#其他的constants用 SCREAMING_SNAKE_CASE 就是有下划线的

#boolean method的名字应该用问号结尾

# Bang methods should only exist if a non-bang method exists

# hash里的 key不要用string,这个称为symbol


(1..5).each do |item|
    item = item + 1
end
puts item

#在 each loop里, |item|里的item 是一个block
