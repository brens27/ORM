require_relative 'app'

def assert(truthy)
  raise "Tests failed" unless truthy
end

chef = Chef.find(1)

chuf = Chef.all.first
assert chuf[:first_name] == 'Adrian'

assert chef[:first_name] == 'Adrian'
assert chef[:last_name] == 'Little'

chef_1 = Chef.create(first_name: "Ruben", last_name: "Rodriguez", email: "rub@yahoo.com", birthday: "1988-12-04", phone: "1234567890")

assert chef_1[:first_name] == "Ruben"
assert chef_1[:email] == "rub@yahoo.com"

chef_where = Chef.where("first_name = ?", "Ruben").first
# p chef_where[:first_name]

assert chef_where[:first_name] == "Ruben"


meal_1 = Meal.create(name: "Pozole", chef_id: 4)

# meal_where = Meal.where("name=?", "Pozole").first
# assert meal_where[:name] == "Pozole"

assert meal_1[:name] == "Pozole"
assert meal_1[:chef_id] == 4

chef_save = Chef.create(first_name: "Paola", last_name:"Garza", email: "pgarza@hotmail.com", birthday: "1988-11-03", phone: "1569874034")

assert chef_save[:id] != nil

puts "finished"