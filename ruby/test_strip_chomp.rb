def a
    a ="\n\n\nbrandon".chomp   #chomp 只省略之后的空格,不省略之后的\n,不省略之前的空格,不省略之前的\n
end
def b
    b ="     \n\n\n\nbrandon   \n\n\n".strip # strip省略一切
end

puts a
puts b

