# Bill Calculator!

# Use your Ruby Kung-fu on this tasty challenge which will have you looping through an array of hashes!

# A group of friends have just finished lunch. Write a method to work out how much each person owes.

# - Your app should ask "Enter a customer's name"- Your first line of code is:
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

# - Your app should output, for example: "John owes $11.0"

## Beast
# Format your total so it always shows two decimal places, e.g. $11.00
# Allow items to be added to the list. E.g. "Press 1 to add items, press 2 to work out a total".

item = [{
    customer: "John",
    item: "Soup",

},
{

customer: "Sarah",
item: "Pasta"

},
{
    customer:"John",
    item: "Coke",

}]
new_order = {}
while true
    print"What's customer name ?"
    puts
    name_input = gets.strip.downcase
    puts " The customer anme is #{name_input}"
    new_order[:customer] = name_input
    print"What's the order?"
    order_item = gets.strip.downcase
    puts
    puts " The customer just ordered one #{order_item} "
    new_order[:item] = order_item
    item << new_order
    puts item
end

