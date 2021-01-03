# conta_com_taxa.rb

class ContaComtaxa < ContaBancaria
    def self.taxa
        2
    end

    def transferir outra_conta, valor
        super
        debitar(ContaComtaxa.taxa)      
    end
end
