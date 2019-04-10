# Here's your magical morning challenge!
# Do your best to manifest the solutions for challenges 1 and 1.2.
# If you can't reveal the beast mode solutions right now, keep them with your unfinished spells and return to them later!

# Challenge 1 Magical Items

# A player has 1000 pieces of gold.
# A magical staff costs 500 pieces of gold.
# A spell costs 25 pieces of gold.
# A word from a wise owl costs 125 pieces of gold.

# Write a small menu-based program which asks the user which magical item they would like to buy. Each menu option is numbered. When the player selects a menu option, the cost of the item should be deducted from their gold balance. If the player buys "A word from a wise owl", display "Expecto patronum!", If the player enters a menu option which does not exist, a warning message should be displayed. Finally, display the player's gold balance.


balance = 1000
mag_cost = 500
spell_cost = 25
word_cost = 125
mag_count = 0
spell_count = 0
word_count = 0
def check_wallet(current_balance, item_price)
    if (current_balance >item_price)
        return true
    else
        return false
    end 
end
puts "
WHAT DO YOU WANT TO BUY ? \n
1.mag_cost = $500
2.spell_cost = $25
3.word_cost = $125
4.Exit
"
option = gets().strip
while option != "4"

    if option == "1"
        puts" you just bought a magical staff "
        balance = balance - mag_cost
        mag_count = mag_count + 1
    elsif option == "2"
        puts" You just bought a spell"
        balance = balance - spell_cost
        spell_count = spell_count + 1
    elsif option == "3"
        puts "You just bought a word"
        balance = balance - word_cost
        word_count = word_count + 1
    else
        puts "Invalid Option"
    end

    puts "
    You have Balance of $#{balance}
    WHAT DO YOU WANT TO BUY ? \n
    1.mag_cost = $500
    2.spell_cost = $25
    3.word_cost = $125
    4.Exit
    "
    option = gets().strip
end
total_count = mag_count + spell_count + word_count

puts "You have Balance of $#{balance}"
puts "you have bought #{total_count} items"







# Challenge 1.2 Magical Items Loop
# The program should continue to display the menu options to the player; allowing them to make multiple purchases, until the player runs out of gold or wishes to exit the menu.

# Beast Mode

# Store the names of all magical items purchased by the player. Display the names when the player chooses to exit the menu.

# Beast mode+

# Allow the user to remove magical items from their purchases. The cost of the magical item should be refunded to the player.
