#### USANDO O TIMES

# 5.times do # repete 5 vezes a mensagem
#     puts 'Repetindo a mensagem' 
# end

# 5.times do | i | 
#     puts 'Repetindo a mensagem ' + i.to_s + ' vez'
# end

# Resultado:
# Repetindo a mensagem 0 vez
# Repetindo a mensagem 1 vez
# Repetindo a mensagem 2 vez
# Repetindo a mensagem 3 vez
# Repetindo a mensagem 4 vez

#### USANDO O WHILE

# init = 0

# while init <= 10 do 
#     puts 'Repetindo a mensagem ' + init.to_s + ' vez(es)'
#     init += 1 # incrementa + 1
# end

#### USANDO O FOR

# for item in (0...10)
#     puts 'Repetindo a mensagem ' + item.to_s + ' vez(es)'
# end

#### Array 

vingadores = ['Iroman', 'Hulk', 'Spiderman']

vingadores.each do |v|
    puts v
end