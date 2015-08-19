require_relative 'app'

def assert(truthy)
  raise "Tests failed" unless truthy
end

# chef = Chef.find(1)

# # Este es un ejemplo de test ya que los nombres de los chefs son aleatorios, este test muy probablemente fallará
# assert chef[:first_name] == 'Freeda'
# assert chef[:last_name] == 'Gleichner'

# #Probando initialize


# # #Probando create
chef_luigi = Chef.create(first_name: "Luigi", last_name: "Bros", email: "luigi@yahoo.com", phone: "1878329704", birthday: "1981-09-04")

puts Chef.where("first_name=?", "Luigi")

assert chef_luigi[:first_name] == "Luigi"
puts "finished"