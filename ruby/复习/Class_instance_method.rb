# Class里的parameter如果有很多,要不放在一行,要不就每一行写一个parameter
#binding pry
#退出 !!!

# class name 大写
# object name 小写
#所有class 

# if there is no attributes using by object outside the class,you don't need initialize
puts plus
puts one
class Dog # class的名字必须大写
    attr_accessor(:legs_count,:tail_count) #不应该有空格
    def initialize(name,owner,f,legs_count)  #initial里的arguments/parameter叫attrubites
        @this_dogs_name = name  #  @是local变量，name是参数或者说是赋予的值
        @this_dogs_owner = owner
        @tail_count = 1
        @legs_count = 4
        @fly  # set as nil first, you can edit later.
    end

    def to_s
        "name : " + @this_dogs_name
    end

    # def legs_count()
    #     return @legs_count
    # end

    # def this_dogs_name
    #     return @this_dogs_name
    # end

    # def this_dogs_owner
    #     return @this_dogs_owner
    # end

    # def tail_count
    #     return @tail_count
    # end
end




oreo（#object） = Dog(#class).new("Oreo","brandon",5,7)#parameter     # 因为tail_count 和 legs_count 设定了固定的值，所以无论pass什么parameter都会显示这个固定的值
Oliver = Dog.new("Oliver","Geoge",4,9)
puts oreo.tail_count
puts oreo.this_dogs_name
puts oreo.this_dogs_owner #呼叫local变量
puts oreo.legs_count
puts oreo.tail_count



 # 在def外面,不能访问def里面的legs_count,只有建立实例变量instance viable ,才能用这个变量
#instance



:: 全局变量
method 和 attribute都是instance/object上的
object 是按照class创造的
@width, @height = w, h

.new是呼叫initial method
class Student
    attr_accessor :first_name, :last_name, :primary_phone_number # accessor = reader+writer
    #等于@first_time = first_time
         #@last_name = last_name
         #@primary_phone_number = primary_phone_number
#  让 单体可以访问class 里的变量
def introduction(target)
    puts "Hi #{target}, I'm #{first_name}!" #只要parameter 和里面变量的名字一样就行,
  end

end


  frank = Student.new
  frank.first_name = "Maxsu"
  frank.introduction('Minlee')#代入的值可以任意取
  #class里的def都是实例的/个体的






require 'date'
#puts Date.today   2019-2-27
class Car
    attr_reader :wheels, :make, :year, :mileage, :color， :aircon, :top_speed, :current_speed
    def initialize(make, year, mileage,color,aircon,top_speed)  # 创建 attributes
        @wheels = 4
        @make = make                     # 指定local变量 = attributes ,local 变量只能在class里用，而且只用在                                   instance上
        @year = year
        @mileage = mileage
        @color = color
        @aircon = aircon
        @top_speed = top_speed
        @current_speed = 0
    end

    def set_current_speed(speed)
        @current_speed = speed
    end

    def toggle_aircon()
        if @aircon_running ==true  # = true可有可无
            @aircon_running  = false
        else
            @aircon_running = true
        end
    end


    # def description
    #     return "Make: #{@make}, Year: #{@year}, Mileage: #{@mileage} Color: #{@color}"
    # end

    def drive(distance)
        @mileage += distance
        puts "print mileage + distance_input"
    end

    def is_vintage?()      #def的名字，在class外可用，其他在class内定义的变量，在class外都不可用
        if DateTime.now.year - @year > 30
            puts"This is a vintage car"
            return true                          #     return ture
        else                                     #  end
            puts"This is not a vintage Car"      #     return false
            return false
        end                       #new
    end
end

car1 = Car.new('Toyota', 2018, 5000, "green", true, 150) #输入attributes
puts car1  #<Car:0x00007fffbc9e9fd0>
car2 = Car.new('honda', 2008, 12200, "white", false,180)
puts car2.color
# work_car.make
puts ("The work car make is #{work_car.make} ")


#{work_car.description}
# puts work_car.make

# work_car.drive(10*5)
trips = [30,10,50,30,20]
trips.each do |day_km|
    puts day_km          # each
    work_car.drive(day_km)
    puts ("The work car is #{work_car.description()}")
end
weekend_car = Car.new('Forester', 2019, 10, "white")
puts ("The work car is #{weekend_car.description}")

# # call out initialize method 对应 attributes
# puts ("The work car is #{work_car.description()}")
# work_car.drive(100)
# puts ("The work car is #{work_car.description()}")
weekend_car.is_vintage?()

# def

#             # ""  # atrribute : method   = feature : action
# # creating a car object
#             work_car = Car.new('toyota', 2018, 5000)
#             # matching initialize ()
#             puts work_car2 = Car.new('mazda', 2016,12000)
#             puts work_car.make
#             car3 = Car.new("new car", 1999, 99)
#             #accesing methods on the car

#             # work_car =

# def

#     c
class Hamburger
    # attr_reader :patty, :bun, :cheese, :condiments
    def initialize(patty,bun)
        @patty = patty
        @bun = bun    # @意思说你可以在class里用这个变量

    end

    def whats_burger()
        "This hamburger has #{@patty} patty on a #{@bun} bun #{ @cheese ? 'with cheese' : 'with no cheese' } "
    end
# if @cheese is true

    # true = "with cheese"
    # false ="with no cheese"
end

puts"patty"
patty = gets().strip
puts"bun"

bun =gets().strip


hamburger1 = Hamburger.new(patty, bun)
puts (hamburger1.whats_burger())  #没有attr_reader也能呼出local变量,但只能通过method呼出



puts "hamburger1 has #{hamburger1.patty} patty and #{hamburger1.bun} bun #{hamburger1.cheese} and with #{hamburger1.condiments}"



hamburger2 = Hamburger.new('chicken', 'sesame', false, ['alio', 'tartar'])
puts "hamburger2 has #{hamburger2.patty} patty and #{hamburger2.bun} bun #{hamburger2.cheese} and with #{hamburger2.condiments}"
hamburger3 = Hamburger.new('veggie patty', 'turkish', true, ['big mac sauce'])
puts "hamburger3 has #{hamburger3.patty} patty and #{hamburger3.bun} bun #{hamburger3.cheese} and with #{hamburger3.condiments}"

puts (hamburger2.whats_burger())


# call out a song out of Class RecordStore

class RecordStore
    attr_reader :name, :artists
    def initialize(name)
        @name = name
        @artists = []
    end

    def add_artist(artist)
        @artists << artist       #先得有object，才可以用instance/object的method步入add_artist
    end

    def to_s
        "name:" + @name
    end
end


class Artist
    attr_reader :name, :albums
    def initialize(name)
        @name = name
        @albums = []
    end
    def add_album(album)
        @albums << album
    end
end
jbhifi = RecordStore.new("JB Hifi")
puts jbhifi

jay = Artist.new("Jay")
jbhifi.add_artist(jay)
puts jbhifi.name
puts jbhifi.artists
sanity = RecordStore.new("sanity")
puts sanity
puts sanity.name



batles = Artist.new("Bentles")
elvis = Artist.new("Elvis")
jbhifi.add_artist (batles)
print jbhifi.artists


jbhifi.artists[0]
sanity.artists[0] # nil
jbhifi.add_artist (elvis)

class album
    attr_reader (:name, :tracks)
    def initialize(name, tracks)
        @name = name
        @tracks= []
    end
end

help = Album.new("Help")
white = Album.new("The White")
black = Album.new ("The Black")
batles.add_album(help)
batles.add_album(white)
batles.add_album(black)

jbhifi.artist[0].albums[2].name


class Artist
    def initialize(name)   #initialize也要def
        @name = name
        artists = []
    end

    def add_album
        artists << name
    end


end

class Album
    def initialize()


        def album_count
            @albums.length

# Class method vs instance methond

    # Class Method
class helloHi
    def self.class_method
        "Hello, from a class method"
    end

     def intstance_method
        "Hello, from a class method"
     end
end


puts helloHi.class_method

class SayHello
	# Class Method
    def self.from_the_class
        "Hello, from a class method"
    end
end

puts SayHello.from_the_class

