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

