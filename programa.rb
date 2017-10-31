def saludo (pregunta)
    puts "Hola, bienvenido a la compra de cursos."
    print pregunta + " "
    gets.chomp
end

cantidad= saludo "¿Cuántos cursos quieres?"
puts "Solicitaste #{cantidad} cursos."
puts "Para #{cantidad} cursos el precio es #{cantidad.to_f*10}"
