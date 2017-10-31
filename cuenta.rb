class BankAccount
    attr_reader :name, :transactions

    def initialize(name)
        # las porpiedades de esta clase se declaran/usan con @
        @name=name
        @transactions=[]
        add_transaction("Saldo disponible",0)
    end
    def credit (description,amount)
        add_transaction(description,amount)
    end
    def debit (description,amount)
        add_transaction(description,-amount)
    end
    def add_transaction (description,amount)
        @transactions.push(description: description,amount: amount)
    end

    def balance 
        balance=0.0
        @transactions.each do |transaction|
            balance+= transaction[:amount]
        end
        return balance
    end

    def to_s
        puts "Cuenta: #{@name}"
        puts "Transacciones:"
        puts "-" * 45
        fila=1
        @transactions.each do |transaccion|
            puts (fila.to_s + " ").ljust(5) + transaccion[:description].ljust(30) + sprintf("%0.2f",transaccion[:amount]).rjust(10)
            fila +=1
        end
        puts "-" * 45
        puts "Saldo final: ".ljust(35) + sprintf("%0.2f",balance).rjust(10)
        puts "-" * 45
    end
    def printer_register
        to_s
    end
end

bank_account= BankAccount.new("Ramon")
bank_account.credit("Pago nomina",1000)
bank_account.debit("Ryokan Seyru",500)
#puts bank_account.inspect
#puts bank_account.transactions
#puts bank_account
puts bank_account.printer_register