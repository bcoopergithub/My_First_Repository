cocktail = {
            on_ordered:3,
            sell_price:22,
            cost_to_make: 8
}

beer = {
    on_ordered:6,
    sell_price:12,
    cost_to_make: 3
}

water = {
        on_ordered:2,
        sell_price:6,
        cost_to_make: 0.15
}

customer_order1 = {

    drinks_purchased: 0,
    drink_list: [],
    budget: 0
}
def deal_with_choice(drink, customer )
    puts" You are buying a #{drink}."
    drink[:on_ordered] += 1
    customer[:drinks_purchased] += 1
    customer[:drink_list] << cocktail

puts ("what would you liake to order?
    1.cocktail
    2.beer
    3.water
    x.Exit"
    )
    input = gets.strip
while true

    if input == "1"
        customer_order1 = deal_with_choice(cocktail, customer_order1)
        puts "after deal_with_choice"
        print(customer_order1)
        puts
    elsif input == "2"
        customer_order1 = deal_with_choice(beer, customer_order1)
        puts "after deal_with_choice"
        print(customer_order1)
        puts
    elsif input == "3"
        customer_order1 = deal_with_choice(beer, customer_order1)
        puts "after deal_with_choice"
        print(customer_order1)
        puts
    elsif input == "x"
        break
    elseW
    puts "please enter a useful input"
    break
    end
    puts "Please enter anonter drink"
    input = gets.strip

end

print (customer_order1)

puts
cus1_cocktails = 0
customer_order1[:drink_list]
