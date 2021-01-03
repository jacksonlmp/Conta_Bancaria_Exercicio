#principal.rb

require "./classes/conta_bancaria"

conta_jack = ContaBancaria.new "jack", 100
conta_pessoa2 = ContaBancaria.new "pessoa2", 200

conta_jack.transferir conta_pessoa2, 50

p "Conta JACK"
p conta_jack.saldo

p "Conta Pessoa"
p conta_pessoa2.saldo

#Caso de teste de conta sem saldo

conta_jack.transferir(conta_pessoa2, 60) #falhar