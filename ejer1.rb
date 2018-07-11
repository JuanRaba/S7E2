puts 'Dado el array:'
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
puts a.to_s
puts '1. Utilizando map aumentar el valor de cada elemento del array en 1.'
a = a.map { |e| e + 1 }
puts a.to_s

puts '2. Utilizando map convertir todos los valores a float.'
puts (a.map &:to_f).to_s

puts '3. Utilizando map convertir todos los valores a string.'
# long way: a.map { |e| e.to_s }
puts (a.map &:to_s).to_s

puts '4. Utilizando reject descartar todos los elementos menores a 5 en el array.'
puts a.reject { |e| e < 5 }.to_s

puts '5. Utilizando select descartar todos los elementos mayores a 5 en el array.'
puts a.reject { |e| e > 5 }.to_s

puts '6. Utilizando inject obtener la suma de todos los elementos del array.'
puts a.inject(0.0) { |mem, var| mem + var.to_i }

puts '7. Utilizando group_by agrupar todos los números por paridad (si son '
puts 'pares, es un grupos, si son impares es otro grupo).'
puts (a.group_by &:even?).to_s

puts '8. Utilizando group_by agrupar todos los números mayores y menores que 6.'
# el 6 no debe ir en ningun grupo
a.reject! { |e| e == 6 }
puts a.group_by { |e| e > 6 }.to_s
