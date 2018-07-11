puts 'Dado el arreglo'
nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
puts nombres.to_s
puts 'Se pide:'
puts '1. Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método'
puts '.select.'
puts nombres.select { |e| e.length > 5 }.to_s

puts '2. Utilizando .map crear una arreglo con los nombres en minúscula.'
# { |e| e.downcase }
puts minuscula = (nombres.map &:downcase).to_s

puts '3. Utilizando .select para crear un arreglo con todos los nombres que empiecen con P.'
puts porp = nombres.select { |e| e[0] == 'P' }.to_s

puts '4. Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada'
puts 'nombre.'
puts unico = (nombres.map &:length).to_s

puts '5. Utilizando .map y .gsub eliminar las vocales de todos los nombres.'
puts unico = (nombres.map { |e| e.gsub(/[aeiou]/, '') }).to_s
