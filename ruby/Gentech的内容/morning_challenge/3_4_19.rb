# Player scores challenge!

# Quick one! Once you're done, move back into your Ruby Fundamentals! :)

# Here's a hash of player scores:
player_scores = {
    straven: 100,
    kidd_thunda: 99,
    rakky: 98,
    killer_emmy: 97,
    space_toy: 50,
    iCalculator: 45,
    giggz: 23
}

player_scores[:brandon] = 95

# 1. Write code which adds your own score key/value to the hash.
#
# Here's an .each block for the hash.
player_scores.each do |key,value|
    puts "key is #{key},value is #{value}"
    if player_scores[:brandon] = 95
        player_scores[:brandon] = player_scores[:brandon] + 100
    end
end
# 2. Complete the body of the .each block - print the key and value of the player_scores hash.
##
# 3. Now write code which adds 100 to your own score.
# 4. Display the value of your score.
