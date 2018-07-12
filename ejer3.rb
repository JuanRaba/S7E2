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

curso = Hash.new {}
puts curso

def askdata
  puts 'Edad?'
  e = gets.chomp.to_i
  puts 'Comuna?'
  c = gets.chomp
  puts 'Género M/F?'
  g = gets.chomp
  { edad: e, comuna: c, genero: g }
end
r = 0
until r == 10
  puts 'ingrese opcion:
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
  n = 'void'
  if r < 4
    puts 'Nombre?'
    n = gets.chomp
  end

  case r
  when 1
    if curso.key? n.to_sym
      puts 'aweonao si quieres modificar 2'
    else
      hash = askdata
      puts "Se agrega #{n} #{hash}"
      curso[n.to_sym] = hash
    end
    puts curso
  when 2
    if curso.key? n.to_sym
      hash = askdata
      puts "Se modifica #{n} #{hash}"
      curso[n.to_sym] = hash
    else
      puts 'aweonao si quieres agregar 1'
    end
    puts curso
  when 3
    if curso.key? n.to_sym
      puts "Se borra #{n} #{curso[n]}"
      curso.delete(n.to_sym)
    else
      puts 'aweonao no existe para eliminar'
    end
  when 4
    puts curso.size
  when 5
    curso.each { |k, v| puts v[:comuna] }
  when 6
    curso.each { |k, v| puts k if (v[:edad] >= 20) and (v[:edad] <= 25) }
  when 7 # sum(edad)
    sum = 0
    curso.each { |k, v| sum += v[:edad] }
    puts "suma edades es #{sum}"
  when 8 # promedio(edad)
    sum = 0
    curso.each { |k, v| sum += v[:edad] }
    puts "promedio edades es #{sum/curso.size}"
  when 9 # listas genero'
    f = []
    m = []
    x = []
    curso.each do |k, v|
      g = v[:genero]
      case g
      when 'f'
        f.push(g)
      when 'm'
        m.push(g)
      else
        x.push(g)
      end
    end
    puts "generos f=#{f} m=#{m} x=#{x}"
  else
    puts "You gave me #{r} -- I have no idea what to do with that."
  end
end
