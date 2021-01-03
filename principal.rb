#principal.rb

conta_jack = ContaBancaria.new "jack", 100
conta_pessoa2 = ContaBancaria.new "pessoa2", 200

conta_jack.transferir conta_pessoa2, 50

p conta_jack.saldo
p conta_pessoa.saldo