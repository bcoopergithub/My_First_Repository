# You-hash

# Here's a quick one.

# 1. Define a hash which describes YOU :) Include a minimum of 6 key/value pairs.
# 2. Use .each (loop) to print each key and value in the hash - use interpolation to format the and value into a string.


me = Hash.new #建立新的hash一定要大写
me[:first_name]="Jingwen",
me[:family_name]="Gu",
    me[:age]="29",
        me[:gender]="Male",
            me[:qualification]="Bachelor",
                me[:hobby]="soccer"

me.default = "not find"
puts me[:aaa]
me.each_with_index do |(key,val),index|
    puts "     key: #{key}    |    value:  #{val}   index:#{index+1}"


end