require_relative '../../app/bank'

Dado("que eu tenho R$ {float} em minha conta corrente") do |saldo|
    @conta = ContaCorrente.new(saldo)
  end
  
  Quando("faço um saque de R$ {float}") do |valorSaque|
    @conta.saca(valorSaque)
  end
  
  Então("meu saldo final deve ser R$ {float}") do |saldo_final|
    expect(@conta.saldo).to eq saldo_final
  end

  Então("vejo a mensagem {string}") do |mensagem|
    expect(@conta.mensagem).to eq  mensagem
  end