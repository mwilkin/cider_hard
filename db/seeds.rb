drinks_list = [
  ["Noah's Nectar", "Apple", "Meford, OR", "Light and crisp", 12],
  ["Perry's Pear Cider", "Pear", "Hood River, OR", "delicate sweet", 15],
  ["Olivia's Grog", "Apple & Pear", "Bend, OR", "Powerful", 21],
  ["Knotty Apple Cider", "Apple", "Meford, OR", "Light and crisp, with subtle notes of cinnamon", 14],
  ["Brazen Rasberry Cider", "Rasberry", "Portland, OR", "Dry, colorful finish", 25]
]

drinks_list.each do |name, fruit, origin, description, cost|
  Drink.create( name: name, fruit: fruit, origin: origin, description: description, cost: cost)
end
