puts '1. Crear un menú que permita registrar la información de los alumnos del curso.'
puts '2. Opción 1: Permite ingresar los datos de una persona:'
puts 'Nombre'
puts 'Edad'
puts 'Comuna'
puts 'Género'
puts '3. Opción 2: Permite editar los datos de la persona.'
puts '4. Opción 3: Permite eliminar una persona.'
curso = Hash.new { }
puts curso

while false do
  print 'ingrese opcion:'
  r = gets.chomp

  case r
  when 1
    puts 'Nombre?'
    n = gets.chomp
    puts 'Edad?'
    e = gets.chomp.to_i
    puts 'Comuna?'
    c = gets.chomp
    puts 'Género?'
    g = gets.chomp
    unless curso.key? n.to_sym do
      puts "Se agrega #{n} #{e} #{c} #{g}"
      curso[n.to_sum] = [e, c, g]
    else
      puts "aweonao si quieres modificar 2"
    end
    puts curso
  when 2
    puts 'Nombre?'
    n = gets.chomp
    puts 'Edad?'
    e = gets.chomp.to_i
    puts 'Comuna?'
    c = gets.chomp
    puts 'Género?'
    g = gets.chomp
    if curso.key? n.to_sym do
      puts "Se modifica #{n} #{e} #{c} #{g}"
      curso[n.to_sum] = [e, c, g]
    else
      puts "aweonao si quieres agregar 1"
    end
    puts curso
  when 3
    puts 'Nombre?'
    n = gets.chomp
    if curso.key? n.to_sym do
      puts "Se borra #{n} #{curso[n]}"
      curso.delete(n.to_sym)
    else
      puts "aweonao no existe para eliminar"
    end
  else
    puts "You gave me #{r} -- I have no idea what to do with that."
  end
end