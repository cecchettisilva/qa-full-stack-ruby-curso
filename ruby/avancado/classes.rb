class Conta
  attr_accessor :saldo

  def deposita(valor)
    # Modo não convencial
    # puts 'Depositando a quantia de ' + valor.to_s + ' reais.'
    
    # Invoca um metódo ou atributo dentro da mesma classe
    self.saldo += valor
    # Modo de interpolação e mais convencional e não precisa de conversão
    puts "Depositando a quantia de #{valor} reais."
  end
end

c = Conta.new
c.saldo = 0.0
c.deposita(100.00)
