# Classe possui atributos e metódos
# Caracteriscas e ações

class Carro
  attr_accessor :nome  

  def ligar
    puts "O carro está pronto para iniciar o trajeto!"
  end
end

civic = Carro.new
civic.nome = 'Civic'
civic.ligar
puts civic.nome
