# Greeting hash challenge

# 1. Define a hash called greeting which contains the language translations for a simple "Hello" greeting in several languages including English, Spanish, French and Japanese (and any others you know!).
greeting = {:english => "hello",
             :chinese => "你好",
             :russian => "Привет",
             :korean => "여보세요"
}



# 2. Write a small menu based program which asks the user to select a language.
puts greeting
puts "Please choose a language"
puts "quit for exit"
input = gets.strip
language_list = []
# 3. Display the greeting for that language - or if an invalid selection is made, the default greeting should be displayed in English.
while input != "quit"
    puts "Please choose a language"
    puts "quit for exit"
    input = gets.strip
    puts "#{greeting[input.to_sym]}"
    language_list << greeting[input.to_sym]
end
puts "#{greeting[input.to_sym]}"
print language_list

# 4. Define a hash called farewell which contains the language translation for the farewell "Goodbye", including all of the same languages from the previous hash.
# 5. When the program ends, display the farewell for the user's given language.
##
# Absolute beast mode - maybe come back to this later...
# 1. Define a hash called language_dictionary.
# 2. Nest the greeting and farewell hashes within this hash so that the first key/value contains greetings and the second key/value contains farewells.
# 3. Modify your program to look up language translations from language_dictionary.
