# Coleção de dados, feita através de chave e valor.
# Parecida com Array, porém é feita com chave e valor.

carro = Hash[nome: 'Civic', marca: 'Honda', cor: 'Vermelho']
puts carro[:nome]

carro[:modelo] = 'SI'
puts carro