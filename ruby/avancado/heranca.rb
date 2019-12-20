#Tudo que for incomum, ficará em uma classe genérica 

class Veiculo 
  attr_accessor :nome, :marca, :modelo

  def initialize(nome, marcado, modelo)
    self.nome = nome
    self.marca = marca
    self.modelo = modelo
  end

  def ligar
    puts "#{nome} está pronto para iniciar o trajeto!"
  end

  def buzinar
    puts "Beep beep!"
  end
end

class Carro < Veiculo # realizado herança
  def dirigir
    puts "#{nome} iniciando o trajeto."
  end
end

class Moto < Veiculo  # realizado herança
  def pilotar
    puts "#{nome} iniciando o trajeto."
  end
end

civic = Carro.new("Civic", "Honda", "SI")
civic.ligar
civic.buzinar
civic.dirigir

lancer = Carro.new("Lancer", "Mitshubish", "Evo")
lancer.ligar
lancer.buzinar
lancer.dirigir

fazer = Moto.new("Fazer", "Yamaha", "250k")
fazer.ligar
fazer.buzinar
fazer.pilotar
