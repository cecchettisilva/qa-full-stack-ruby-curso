# # Parecido com o try/catch

# begin
#   # Devemos tentar alguma coisa
#   # Lê o arquivo ola.txt
#   file = File.open('./ola')
#   # Correto
#   # file = File.open('./ola.txt')
#   if file
#     puts file.read
#   end
# rescue Exception => e
#   # Obter mensagem de erro
#   puts e.message
#   puts e.backtrace
# end

def soma(n1, n2)
  n1 + n2
rescue Exception => e
  puts 'Erro ao realizar a soma. ' + e.message
end

resultado = soma('10', 1)
puts resultado