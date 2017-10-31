# Cagamos la clase
require './05address'

require "./03phone_number"

class Contact
  attr_writer :first_name, :middle_name, :last_name
  #Añadimos la dirección como atributo
  attr_reader :phone_numbers, :addresses
  #Lo añadimos al inicializador
  def initialize
    @phone_numbers = []
    @addresses = []#justo aqui
    
  end
#Cargamos el nuevo método para añadir direcciones a los contactos
def add_address(kind, street_1, street_2, city, state, postal_code)
  address = Address.new
  address.kind = kind
  address.street_1 = street_1
  address.street_2 = street_2
  address.city = city
  address.state = state
  address.postal_code = postal_code
  addresses.push(address)
end
#fin
#y otro para mostrar en pantalla
def print_addresses
  puts "Dirección"
  addresses.each { |address| puts address.to_s('short') }
end
#fin


  def add_phone_number(kind, number)
    phone_number = PhoneNumber.new
    phone_number.kind = kind
    phone_number.number = number
    phone_numbers.push(phone_number)
  end
  

  def first_name
    @first_name
  end

  def middle_name
    @middle_name
  end

  def last_name
    @last_name
  end

  def first_last
    first_name + " " + last_name
  end

  def last_first
    last_first = last_name
    last_first += ", "
    last_first += first_name
    if !@middle_name.nil?
      last_first += " "
      last_first += middle_name.slice(0, 1)
      last_first += "."
    end
    last_first
  end

  def full_name
    full_name = first_name
    if !@middle_name.nil?
      full_name += " "
      full_name += middle_name
    end
    full_name += ' '
    full_name += last_name
    full_name
  end

  def to_s(format = 'full_name')
    case format
    when 'full_name'
      full_name
    when 'last_first'
      last_first
    when 'first'
      first_name
    when 'last'
      last_name
    else
      first_last
    end
  end

  def print_phone_numbers
    puts "Teléfonos:"
    phone_numbers.each { |phone_number| puts phone_number }
  end
end

#finalmente lo implementamos para testearlo
david = Contact.new
david.first_name = "David"
david.last_name = "Pique"
david.add_phone_number("Casa", "123-456-7890")
david.add_phone_number("Trabajo", "456-789-0123")
david.add_address("Casa", "Los robles 17", "", "Guadalix", "MA", "12345")

puts david.to_s('full_name')
david.print_phone_numbers
david.print_addresses