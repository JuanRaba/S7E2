puts '1. Crear un menú que permita registrar la información de los alumnos del
curso.'
puts '2. Opción 1: Permite ingresar los datos de una persona:'
puts 'Nombre'
puts 'Edad'
puts 'Comuna'
puts 'Género'
puts '3. Opción 2: Permite editar los datos de la persona.'
puts '4. Opción 3: Permite eliminar una persona.'

puts '5. Opción 4: Muestra la cantidad de personas ingresadas.'
puts '6. Opción 5: Muestra las comunas de todas las personas.'
puts 'hint: Generar un array con las comunas, eliminar repeticiones.'
puts 'Considerar que pueden haber nombres escritos con mayúscula y minúscula.'
puts '7. Opción 6: Muestra una lista con todas las personas que tengan entre
20 y 25 años.'
puts '8. Opción 7: Muestra la suma de las edades de todas las personas.'
puts '9. Opción 8: Muestra el promedio de las edades del grupo.'
puts '10. Opción 9: Muestra dos listas de personas, una por cada género.'
puts '11. El menú debe repetirse hasta que el usuario ingrese la opción
10 (salir).'

curso = []
puts curso

def askdata
  puts 'Nombre?'
  n = gets.chomp
  puts 'Edad?'
  e = gets.chomp.to_i
  puts 'Comuna?'
  c = gets.chomp
  puts 'Género M/F?'
  g = gets.chomp
  { nombre: n, edad: e, comuna: c, genero: g }
end
r = 0
until r == 10
  puts '


  ingrese opcion:
  1) ingrese
  2) edite
  3) eliminar
  4) size
  5) comunas
  6) nombre si 20 => edad <=25
  7) sum(edad)
  8) promedio(edad)
  9) listas genero'
  r = gets.chomp.to_i

  case r
  when 1
    hash = askdata
    puts "Se agrega #{hash}"
    curso.push hash # warning duplicates
  when 2
    puts curso
    # need ask the user to get the index
    puts 'que numero es en la lista? (cuenta desde +1 como las personas)'
    n = gets.chomp.to_i
    # need check if num is correct
    hash = askdata
    if (n <= curso.size + 1) && (n > 0)
      puts "Se modifica #{curso[n - 1]} por #{hash}"
      curso[n - 1] = hash
    else
      puts 'no hay tantos... :0)'
    end
    puts curso
  when 3
    puts curso
    # need ask the user to get the index
    puts 'que numero es en la lista? (cuenta desde +1 como las personas)'
    n = gets.chomp.to_i
    # need check if num is correct?
    curso.delete_at(n - 1)
    # what about fragmentation of the array? .. RUBY MAGIC!
    puts curso
  when 4
    puts "hay #{curso.size}"
  when 5
    curso.each { |v| puts v[:comuna] }
  when 6
    curso.each { |v| puts k if (v[:edad] >= 20) && (v[:edad] <= 25) }
  when 7 # sum(edad)0
    sum = curso.inject(0) { |mem, v| mem + v[:edad] }
    puts "suma edades es #{sum}"
  when 8 # promedio(edad)
    sum = curso.inject(0) { |mem, v| mem + v[:edad] }
    puts "promedio edades es #{sum / curso.size}"
  when 9 # listas genero'
    # sorry lgtb
    list = curso.group_by { |v| v[:genero] == 'f' }
    puts "generos f y no f #{list}}"
  else
    puts "You gave me #{r} -- I have no idea what to do with that."
  end
end
