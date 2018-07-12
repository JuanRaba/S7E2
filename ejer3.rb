puts '1. Crear un menú que permita registrar la información de los alumnos del curso.'
puts '2. Opción 1: Permite ingresar los datos de una persona:'
puts 'Nombre'
puts 'Edad'
puts 'Comuna'
puts 'Género'
puts '3. Opción 2: Permite editar los datos de la persona.'
puts '4. Opción 3: Permite eliminar una persona.'
curso = Hash.new {}
puts curso

def askdata()
  puts 'Edad?'
  e = gets.chomp.to_i
  puts 'Comuna?'
  c = gets.chomp
  puts 'Género?'
  g = gets.chomp
  {edad:e, comuna:c, genero:g}
end

while true do
  print 'ingrese opcion:'
  r = gets.chomp.to_i

  puts 'Nombre?'
  n = gets.chomp

  case r
  when 1
    unless curso.key? n.to_sym
      hash = askdata()
      puts "Se agrega #{n} #{hash}"
      curso[n.to_sym] = hash
    else
      puts "aweonao si quieres modificar 2"
    end
    puts curso
  when 2
    if curso.key? n.to_sym
      hash = askdata()
      puts "Se modifica #{n} #{hash}"
      curso[n.to_sym] = hash
    else
      puts "aweonao si quieres agregar 1"
    end
    puts curso
  when 3
    if curso.key? n.to_sym
      puts "Se borra #{n} #{curso[n]}"
      curso.delete(n.to_sym)
    else
      puts "aweonao no existe para eliminar"
    end
  else
    puts "You gave me #{r} -- I have no idea what to do with that."
  end
end