require "./contact"
require "yaml"

class AddressBook
  attr_reader :contacts

  def initialize
    @contacts = []
    open()
  end

  def open 
    if File.exists?("contacts.yml")
      @contacts = YAML.load_file("contacts.yml")
    end
  end

  def save
    File.open("contacts.yml","w") do |file|
        file.write(contacts.to_yaml)
    end
  end

  #Añadimos a continuación la búsqueda por tdirección elefono, que es muy similar
  def find_by_address(query)
    results = []
    search = query.downcase
    contacts.each do |contact|
      contact.addresses.each do |address|
        if address.to_s('long').downcase.include?(search)
          results.push(contact) unless results.include?(contact)#evitamos resultados duplicados
        end
      end
    end
    print_results("Resultados por dirección: (#{search})", results)
  end
  #fin

  def find_by_phone_number(number)
    results = []
    search = number.gsub("-", "")
    contacts.each do |contact|
      contact.phone_numbers.each do |phone_number|
        if phone_number.number.gsub("-", "").include?(search)
          results.push(contact) unless results.include?(contact)
        end
      end
    end
    print_results("Búsqueda por teléfono: (#{search})", results)
  end
  
  
  def print_results(search, results)
    puts search
    results.each do |contact|
      puts contact.to_s('full_name')
      contact.print_phone_numbers
      contact.print_addresses
      puts "\n"
    end
  end

  #fin y abajo la probamos

  def find_by_name(name)
    results = []
    search = name.downcase
    contacts.each do |contact|
      if contact.full_name.downcase.include?(search)
        results.push(contact)
      end
    end
    puts "resultados de la búsqueda: (#{search})"
    results.each do |contact|
      puts contact.to_s('full_name')
      contact.print_phone_numbers
      contact.print_addresses
      puts "\n"
    end
  end 

  def print_contact_list
    puts "Lista de contactos"
    contacts.each do |contact|
      puts contact.to_s('last_first')
    end
  end
end
#fin

address_book = AddressBook.new

david = Contact.new
david.first_name = "David"
david.last_name = "Pique"
david.add_phone_number("Casa", "333333333")
david.add_phone_number("Trabajo", "444444444")
david.add_address("Casa", "Los robles 17", "", "Guadalix", "MA", "12345")

anja = Contact.new
anja.first_name = "Anja"
anja.last_name = "La Barga"
anja.add_phone_number("Casa", "222-222-2222")
anja.add_address("Casa", "222 Villanueva", "", "Sevilla", "SE", "12345")

address_book.contacts.push(david)
address_book.contacts.push(anja)

#Buscamos por la dirección
#address_book.find_by_address("villa")
