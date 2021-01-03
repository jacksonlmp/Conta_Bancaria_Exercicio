#conta_bancaria.rb

class ContaBancaria
    def initialize(proprietario, valor_inicial)
        @proprietario = proprietario
        @valor = valor_inicial
    end

    def transferir(outra_conta, valor)
        #Logica de Transferencia
        if salvo >= valor
            debitar valor 
            outra_conta.depositar(valor)
        else
            #Não faço nada
            puts "Impossivel transferir! Saldo insuficiente"
        end
    end

    def saldo
        @valor
    end

    private def debitar(valor)
        @valor -= valor
    end
end 
