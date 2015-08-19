require_relative 'app'

def assert(truthy)
  raise "Tests failed" unless truthy
end

# chef = Chef.find(1)

# # Este es un ejemplo de test ya que los nombres de los chefs son aleatorios, este test muy probablemente fallará
# assert chef[:first_name] == 'Freeda'
# assert chef[:last_name] == 'Gleichner'

# #Probando initialize


# #Probando create
chef_marcos = Chef.create(first_name: "Marcos", last_name: "Diogo", email: "gdio@yahoo.com", phone: "1587832674", birthday: "1987-09-04")

puts "finished"