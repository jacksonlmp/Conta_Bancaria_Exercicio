#principal.rb

require "./classes/conta_bancaria"
require "./classes/conta_com_taxa"

conta_jack = ContaComtaxa.new "jack", 100
conta_pessoa2 = ContaBancaria.new "pessoa2", 200

conta_jack.transferir conta_pessoa2, 50

p "Conta JACK"
p conta_jack.saldo

p "Conta Pessoa"
p conta_pessoa2.saldo

#Caso de teste de conta sem saldo

begin
    conta_jack.transferir(conta_pessoa2, 60) #Falhar
rescue StandardError => meu_erro
    p "Não foi possivel transferir: #{meu_erro.message}"
end


#Codigo não executado, pois a linha acima gerou um erro

p "Conta JACK"
p conta_jack.saldo

p "Conta Pessoa"
p conta_pessoa2.saldo