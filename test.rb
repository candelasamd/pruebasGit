def suma(primero,segundo)
    puts primero
end

#suma(50,100)

def say (param1)
    puts "saludo personalizado ", param1
end

#say "seras cachondo"

def suma (primero, segundo)
   primero + segundo #return
end

#puts suma (suma 1,2) , 4

def multiplica
    producto=25.0 * 3
    cociente= 7.0/4
    puts producto, cociente
end

#multiplica

def asigna_num(param)

    print "Introduce valor para #{param}: " 
    gets.to_f
end
=begin
    a=12
    b=7
    c=5
    d=10
=end
#puts "La media es: #{((asigna_num "a")+ (asigna_num "b")+( asigna_num "c")+ (asigna_num "d"))/4}"

def escapando
    puts "Cuando escribes \\t en un string con comillas dobles se muestra así:"
    puts 'Lo mismo: cuando escribes \t en un string con comillas dobles se muestra así:'
    puts "David\tPiqué"
    puts "Cuando escribes \\n en un string con comillas dobles se muestra así:"
    puts "David\nPiqué"
end

#escapando

def bucleando
    loop do
            print "Quieres segiçuir? (s/n)"
            answer=gets.chomp.downcase
            if answer == "n"
                break
            end
    end
    loop {print "Quieres segiçuir? (s/n) ctrl+c para abortar"}
end

def repeat(string,times)
    fail "repetir debe ser 1 o mayor de 1" if times < 1
    counter = 0
    loop do
        puts string
        counter+=1
        if counter == times
            break
        end
    end
end
=begin
puts "Pon alo a repetir: "
cadena= gets 
puts "Pon cuantas veces: "
veces= gets 
repeat cadena,veces.to_i
=end


def ej_random
    random_number=Random.new.rand(5)
    loop do
        puts "Adivina el numero del 1 al 5 (pulsa e para salir): "
        adivinando = gets
        if adivinando.to_i == random_number
            puts "Has acertado, era #{random_number}. ¡¡¡PREMIO!!! Ya no hace falta seguir"
            break
        end
        if adivinando.chomp == "e"
            puts "Te rendiste je je, era #{random_number}."
            break
        end
        puts "Has fallado, vuelve a intentarlo"
    end
end

#ej_random

=begin
answer=""
while answer != "n"
    printf "Quieres deguir con eete desproposito? (s/n)"
    answer= gets.chomp.downcase
end
=end

def print_hello(repeticiones)
    i=0
    while i < repeticiones
        puts "Saludo"
        i+=1
    end
end
=begin
answer=0
while answer < 5
    printf "Cuantas veces repetimos? (+ de 5 se acaba)"
    answer= gets.chomp.to_i
    print_hello(answer)
end

until answer== "no" do
    print "cualquier cosa"
    answer=gets.chomp
end
=end

=begin
array=[0,1,2,3]
array.each do |valor|
    puts "el valor es: #{valor}"
end

array=[0,1,2,3]
array.each do |valor|
    valor +=2
    puts "el valor es: #{valor}"
end
puts array.inspect
=end

=begin
business = {"name"=> "PixelCompany", "location"=>"Madrid"}
business.each do |key,valor|
    puts "La clave es #{key} y su valor es #{valor}"
end
business.each do |fila|
    puts "La fila es #{fila} "
end


5.times do
    puts "hola"
end
5.times do |item|
    puts "hola #{item}"
end

for item in 1..5 do
    puts "el valor es  #{item}"
end


for item in ["uno", "dos", "tres"] do
    puts "el valor es  #{item}"
end

=end

unavariable = "tontaina"
puts unavariable.respond_to?("reverse")
unavariable = 123
puts unavariable.respond_to?("reverse")
unavariable = {"uno"=>"tontaina","dos"=>"idiota"}
puts unavariable.respond_to?("reverse")
unavariable = ["tontaina","idiota"]
puts unavariable.respond_to?("reverse")