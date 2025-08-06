MSG = """_________________________________
Sistema de cadastro da biblioteca
_________________________________"""

puts MSG

name = ""
surname = ""
age = 0

loop do
  print "Digite seu nome: "
  name = gets.chomp.strip.capitalize
  if name.empty?
    puts "Nome não pode ser vazio. Tente novamente."
    next
    end
  puts "_________________________________"
  print "Digite seu sobrenome: "
  surname = gets.chomp.strip.capitalize
  if surname.empty?
    puts "Sobrenome não pode ser vazio. Tente novamente."
    next
  end
  puts "_________________________________"
  print "Digite sua idade: "
  age = gets.chomp.strip
  if age.to_s.empty? || age.to_i <= 0
      puts "Idade inválida. Deve ser um número positivo. Tente novamente."
      next
  end
  puts "_________________________________"
  puts "Cadastro realizado com sucesso!"
  puts "Nome: #{name} #{surname}, #{age} anos"
  puts "_________________________________"
  puts "Deseja realizar um novo cadastro? (s/n)"
  resposta = gets.chomp.strip.downcase
  if resposta == 'n'
    puts "Obrigado por utilizar o sistema de cadastro da biblioteca!"
    break
  elsif resposta != 's'
    puts "Resposta inválida. Encerrando o programa."
    break
  end
  puts "_________________________________"
end
