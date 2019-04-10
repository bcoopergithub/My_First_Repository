# Ruby Drills A

# Sometimes you learn how to do things before you fully understand how they work. Coding is like this a lot. There are many things that we learn how to do well before we ask how exactly they function. There are still plenty more things where that is the case for any coder - even a senior dev. You merely push back that barrier slowly, but the unknown remains. In that vein, these are exercises that are designed to get you familiar with the lingo of arrays, hashes, and classes and objects, and get you repeatedly using them. It’s not a test, or even a challenge - it’s practice. Consider it like doing a forehand drill in tennis, or scales in music. You wouldn’t be upset making some mistakes while you practice, because you know that this is the thing you need to work toward being competent, and you allow yourself to fail and learn. This is exactly the same.

# Learn and fail as you need here, because the bigger tests are to come. As you get more comfortable with the basic syntax, and getting your code to work, you will have more brain space to think about what it is it all means. (And we are more than happy to keep explaining that at the same time too!)

# Follow the instructions carefully. They will be repetitive and are not designed to be interesting, but rather build up ‘muscle memory’. *Each* line of code that you write, you *must* save the file and run the code. If there are *any* errors, you fix them then and there. If in doubt, puts out the structure you have made to make sure that it is what you hoped it was. We're looking for accuracy - we want the instructions followed precisely. It will be your choice of class and variable names (etc), but the functioning and number of attributes called for are immutable. So that we can check it easily - put the answer directly below the question.


# 8. Define four hashes that each have two keys. Make the value of the keys numbers.
# 9. Access a value within each of these hashes.

# ———————————————————
# 10. Define three hashes that have three keys in each, and set the value of the keys to floats.
# 11. Access a value from each of these hashes.

# ———————————————————
# 12. Define two hashes that have three keys in each, and set the value of these keys to be strings.

# ———————————————————
# 13. Define two hashes that each have three keys, and set each of the values of the keys as a different datatype, integer, float, and string.
# 14. Define an array, and fill it with the hashes from the previous question.
# 15. Loop through this array, printing to screen the value of each member of the array.

# ———————————————————
# 16. Define three arrays of numbers (minimum elements two).
# 17. Define an array, and set each index of that array to be each of the arrays you defined in the previous question.
# 18. Loop through the array that you have created, and print to screen the value of each element in the array.

# ———————————————————
# 19. Define three hashes, each with 3 keys, and give the keys the values of arrays (with a minimum of two elements in each).
# 20. Access one of these arrays within each of these hashes.
# 21. Create three loops from each of the three hashes that you created above by accessing the arrays within.

# ———————————————————
# 22. Make a method that takes two arguments, and returns the result of them added together.
# 23. Call the above method four times with different inputs each time. Make at least some of the inputs floats.
# 24. Define two integer and two float variables, and use them as arguments to this method you have made.

# ———————————————————
# 25. Make a hash with four keys, and let the values be three different data types.
# 26. Access two of the values in your hash, and print them to the screen.

# require 'pry'
# To use pry:
# 1. > gem install pry
# 2. Uncomment line 1 (require 'pry')
# 3. Uncomment line 150 (binding.pry)

# 1. Starting with fruit, extract the string 'lemon' and give its data type
fruit = ['apple', 'orange', 'lemon']

# 2. Starting with phone, extract 'iPhone', and the weight, and give the datatype of each
phone = {
    brand: 'iPhone',
    price: 90000,
    weight: 362
}

# 3. Extract the string 'West Melbourne' starting with restaurant
restaurant = {
    name: 'Biryani House',
    address: {
        street: 'King St',
        suburb: 'West Melbourne'
    }
}

# 4. Starting with fruit_and_veg, extract 'peach'
fruit_and_veg = [
    ['avocado', 'apple'],
    ['grape', 'guava'],
    ['pear', 'pumpkin', 'peach']
]

# 5. Starting with students, produce the number 29, and the string 'Petra'
student1 = {
    name: 'Roger',
    age: 36
}

student2 = {
    name: 'Petra',
    age: 28
}

student3 = {
    name: 'Juan Martin',
    age: 29
}

students = [student1, student3]
students.push(student2)

# 6. Starting with teachers, produce 'Lead', 'military jiujitsu' and 'cooking'
harrison = {
    role: 'TA',
    hobbies: [
        'running',
        'umpiring'
    ]
}

gretchen = {
    role: 'TA',
    hobbies: [
        'military jiujitsu',
        'reading'
    ]
}

ruegen = {
    role: 'Lead',
    hobbies: [
        'opera singing',
        'cooking'
    ]
}

teachers = [ruegen, harrison, gretchen]

# 7. Starting at sport, retrieve a) the string 'doubles', b) the number 20, c) two ways of finding the number 1991, and d) an example of how you would find the number of Wimbledon titles that Monica Seles won from the following structure. (I kept the years as numbers because you might use them to find the number of years between the first and last slams, but they could be represented as strings too.)
mcenroe = {
    name: 'John McEnroe',
    total_majors: 7,
    slam_breakdown: {
        aus_open: [],
        roland_garros: [],
        wimbledon: [1981, 1983, 1984],
        us_open: [1979, 1980, 1981, 1984]
    }
}

federer = {
    name: 'Roger Federer',
    total_majors: 20,
    slam_breakdown: {
        aus_open: [2004, 2006, 2007, 2010, 2017, 2018],
        roland_garros: [2009],
        wimbledon: [2003, 2004, 2005, 2006, 2007, 2009, 2012, 2017],
        us_open: [2004, 2005, 2006, 2007, 2008]
    }
}

sport = {
    name: 'Tennis',
    number_of_players: [
        {
            type: 'singles',
            players: 2
        },
        {
            type: 'doubles',
            players: 4
        }
    ],
    key_players: [
        {
            type: 'female',
            players: [
                {
                    name: 'Steffi Graf',
                    total_majors: 22,
                    slam_breakdown: {
                        aus_open: [1988, 1989, 1990, 1994],
                        roland_garros: [1987, 1988, 1993, 1995, 1996, 1999],
                        wimbledon: [1988, 1989, 1991, 1992, 1993, 1995, 1996],
                        us_open: [1988, 1989, 1993, 1995, 1996]
                    }
                },
                {
                    name: 'Monica Seles',
                    total_majors: 9,
                    slam_breakdown: {
                        aus_open: [1991, 1992, 1993, 1996],
                        roland_garros: [1990, 1991, 1992],
                        wimbledon: [],
                        us_open: [1991, 1992]
                    }
                }
            ]
        },
        {
            type: 'male',
            players: [
                mcenroe,
                federer
            ]
        }
    ]
}

# binding.pry

hash = {1=> "100",
    2=> "200",
3=> "300"}
puts  hash


hash_one = {1=> "100",2=> "200"}
puts hash_one