DATE TIME NOW
require 'date'
class Date
    def Date.now
    return Date.jd(DateTime.now.jd)
    end
end

#     puts Date.jd(DateTime.now.jd)
require 'date'
puts Date.parse("2007/12/11") - Date.parse("2007-12-26")
puts Time.now.strftime("%Y-%m-%d %H:%M:%S") # 2019-02-21 23:48:52
puts Time.now.strftime("%Y-%m-%d ") # 2019-02-21
puts Time.now.strftime("%Y-%m-%d ")-Date.parse("2007-12-26")


require 'date'
age_days = (DateTime.now.to_time - Time.new(1985, 11, 11)).round / seconds_in_a_day - 1

puts "I am #{age_days} days old."
# time_birthc = Date.parse("1989-8-13")
# time_birtha =  Date.parse("1993-2-25")
# puts (time_birthc - time_birtha)
# time = DateTime.now

# year = time.year
# month = time.month
# day = time.day

# time_now= ("#{year}-#{month}-#{day}")

# puts time_now

# diff=DateTime.parse(time_now)- time_birth
# puts diff

# items = [
#     {
#         customer: "John",
#         item: "Soup",
#         cost: 8.50
#     },
#     {
#         customer: "Sarah",
#         item: "Pasta",
#         cost: 12
#     },
#     {
#         customer: "John",
#         item: "Coke",
#         cost: 2.50
#     }
# ]

#original  counter = 0 value= 1
#round 1   counter = 1
counter = 0
value = 1
array = []

while array.length < 100
    array<< counter
    array<< value
    print array
    counter = counter + value #round 1   new counter = 0 + 1 = 1 va
    puts counter
    value = value + counter   #value = 1 + 1 = 2
    puts value
end

puts array.length
print array




# Create three classes: Artist, Album and Song

class Artist



# # Artist class
# 1. Artist class has two attributes: name and albums, the albums attribute will be an array of album objects
# 2. The Artist class will also have an instance method that will allow to add album objects to the albums attribute
# 3. Create two instances of the Artist class
# Hint: you may need to initialize the albums attribute as an empty array

# # Album class
# 4. Similarly, the Album class will have a title, release_date and songs array and an instance method to add song objects to the songs attrtibute
# 5. Create at least three instances of the Album class
# 6. Use the instance method defined in the Artist class to add these album objects in the Artist instances created above.

# # Song class
# 7. The Song class will have title, duration and genre
# 8. Create at least three instances of the Song class
# 9. Use the instance method defined in the Album class to add these song objects in the Album instances created above.

# Beast
# 10. create a method in the Artist class that will count how many albums that artist instance has
# 11. create a method in the Album class that will count how many songs that album instance has

# Beast ++
# 12. Create a Billboard class and define a method in there which will count how many instances of the Artist class have been created