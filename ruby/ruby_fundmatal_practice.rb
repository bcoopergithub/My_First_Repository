def will_be(str)
    return str + " will be"
end

def wont_be(str)
    return  str + " won't be"
end


# Define 4 methods. The first takes a string (as an argument), and then returns the string + “ will be”, the second takes a string, and returns the string + “ won’t be”, the third takes a string and returns the string + “ impeached.” and the fourth is called trump_predictor. trump_predictor takes a string, but then you must use the previous functions to get from this method call trump_predictor(“Trump”) to whatever outc

def impeached(str)
    return str + " impeached"
end


def trump_predictor(str)

    return impeached(wont_be(str))
end

puts trump_predictor("Trump")

# Q2

def feet_to_inch (feet)

    return  feet/12
end


def inch_to_cm(inch)
    return inch/2.54
end


def feet_to_cm(feet)
    return  inch_to_cm(feet_to_inch(feet))
end

puts"type the feet value"
gets().chomp #只要在call out之前打出数字就可以
puts "feet to cm is : #{feet_to_cm(50)}"

arr = [0,3,9]
def arr_search(arr,val)
    arr.each do |each|
        if item == val
            return val
        end
    end
    return nil
end

student = arr_search(arr,3)
if(student)
    send a







