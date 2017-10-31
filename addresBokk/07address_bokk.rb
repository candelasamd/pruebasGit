#Creamos esta clase y comentamos la parte final de las clases si no queremos demasiada info
require "./06contact"

class AddressBook
  attr_reader :contacts

  def initialize
    @contacts = []
  end

  def print_contact_list
    puts "Lista de contactos"
    contacts.each do |contact|
      puts contact.to_s('last_first')
    end
  end
end

address_book = AddressBook.new

david = Contact.new
david.first_name = "David"
david.last_name = "Pique"
david.add_phone_number("Casa", "123-456-7890")
david.add_phone_number("Trabajo", "456-789-0123")
david.add_address("Casa", "Los robles 17", "", "Guadalix", "MA", "12345")

anja = Contact.new
anja.first_name = "Anja"
anja.last_name = "La Barga"
anja.add_phone_number("Casa", "222-222-2222")
anja.add_address("Casa", "222 Villanueva", "", "Sevilla", "SE", "12345")

address_book.contacts.push(david)
address_book.contacts.push(anja)

address_book.print_contact_list