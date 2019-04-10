#Object Challs

# A Commuter Card (like a Myki card) has a  card number and balance.
# Define this as a class.
# The card number and balance should be initialized when calling the constructor.
# Provide getters and setters for each instance attribute

# A Commuter_Terminal is responsible to scanning commuter cards. It provides a method which reads the balance of a given commute card, and returns true or false based on the card having a positive balance.
# Define this as a class.

# Instantiate three instances of Commute_Card.
# Instantiate one instance of Commute_Terminal.
# Scan each Commute_Card instance using the Commute_Terminal instance.
# Print the result.

# Part Two
# Modify the Commuter_Terminal class.
# All scanned cards must be stored in a log. Use a hash for this - where the key is the commute card number and the value is the commute card itself.
# Provide read access to the log.
# Print all entries in the log.



   # card_2 = Myki_card.new(5678, 15.0)
   # card_3 = Myki_card.new(1111, 1000.0)
   # puts card_1.card_number

   # num1 = card_1.card_number
   # bal1 = card_1.card_balance
   # puts num1
   # puts bal1



class Myki_card
    attr_accessor(:card_number,:card_balance) # you cannot have space in between attr
    def initialize(card_balance)
      @card_number = rand(1000000..9999999)
      @card_balance = card_balance

    end

end

# train_term1_details = {
#   type:
#   station_location:    #创建了hash的object

# }
# tram_term1_details = {
#   tram_num: 7690
#   tram_route_num: 3
# }
class Commuter_Terminal (Myki_card)
    attr_accessor(:cards_list)

    def initialize() #如果不用hash_input,就要用很多变量和parametertype_input, location_input
      @cards_list = {}
      # @terminal_details = {
      #   type: hash_input[:type]
      #   station_location: hash_input[:location_input,
      #   tram_num: hash_input[:
      #   tram_route_num: hash_input[:
      # }

    end

    def add_cards(card)

        @cards_list[("card number : " +card.card_number.to_s).to_sym] = card # card是instance的集合,对应上面的card
    end

    def bal_check?(card)
      if card.card_balance > 0 # 这里面的card也是对应上面的parameter,之后会填入具体的object
        return true
      else
        return false
      end
    end
    def print_all_logged_cards(hash)
    end
end
card_1 = Myki_card.new(100)
card_2 = Myki_card.new(232)
card_3 = Myki_card.new(-32)

puts card_1.card_balance
puts card_2.card_number
terminal1 = Commuter_Terminal.new() #train_term1_details
puts terminal1.bal_check?(card_1)
puts terminal1.bal_check?(card_2)
puts terminal1.bal_check?(card_3)
terminal1.add_cards(card_1)
puts terminal1.cards_list
terminal1.add_cards(card_2)
terminal1.add_cards(card_3)


terminal2 = Commuter_Terminal.new(tram_term1_details)

   #  terminal.add_cards(card_1)

   #  puts terminal.bal_check



   #  terminal.add_cards(card_2)
   #  terminal.add_cards(card_3)

   #  puts terminal.cards_list[0].card_balance



   # terminal = Commuter_Terminal.new
   # puts terminal.balance

   #  def bal_checker()
   #   if

