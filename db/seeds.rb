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

batches_list = [
  ["alpha", 2500, "Apple", "American Oak", 64, 7.9, 6.8, 0.50],
  ["beta", 1500, "Pear", "Hungarian Oak", 65, 8.1, 6.1, 0.25],
  ["theta", 3500, "Apple", "Fench Oak", 68, 9.0, 7, 0.75]
]

batches_list.each do |batch_name, fruit_weight, fruit_type, barrel_type, temperature, alcohol_content, pH, fruit_cost|
  Batch.create( batch_name: batch_name, fruit_weight: fruit_weight, fruit_type: fruit_type, barrel_type: barrel_type, temperature: temperature, alcohol_content: alcohol_content, pH: pH, fruit_cost: fruit_cost)
end
