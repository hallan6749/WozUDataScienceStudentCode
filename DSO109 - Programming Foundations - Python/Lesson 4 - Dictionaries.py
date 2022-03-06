#part 1
Elsa = {
    'Type' : 'Cat',
    'Color' : 'White and Orange',
    'Nickname' : 'Birchy',
    'Owner' : 'Kurt'
    }

Big = {
    'Type' : 'Dog',
    'Color' : 'Black',
    'Nickname' : 'Walnut',
    'Owner' : 'Olivia'
}

print(Big)
print(Elsa)

#part 2
england = {'Capital': 'London'}
england['Population'] = '53.01 million'
england['Fact'] = 'largest country in Great Britain'
england['Language'] = 'English'
for k, v in england.items(): 
    print(k, v)

france = {'Capital': 'Paris'}
france['Population'] = '66.9 million'
france['Fact'] = 'the hexagon'
france['Language'] = 'Occitan'
for k, v in france.items(): 
    print(k, v)


belgium = {'Capital': 'Brussels'}
belgium['Population'] = '11.35 million'
belgium['Fact'] = 'area of 30,528 square km'
belgium['Language'] = 'Dutch'
for k, v in belgium.items(): 
    print(k, v)

#part 3
pizza_order = {
    'Name' : 'Paul',
    'Size Pizza' : 'large',
    'Type Crust' : 'california style',
    'Toppings' : 'ham, ' 'pepperoni, ' 'mushroom'
}
print(pizza_order)

print("Thank you for order, " + pizza_order.get('Name'))
print("You have ordered a " + str(pizza_order.get("Size Pizza")) + " " + str(pizza_order.get("Type Crust")) + " " + "pizza with the following toppings: " + str(pizza_order.get('Toppings' )))