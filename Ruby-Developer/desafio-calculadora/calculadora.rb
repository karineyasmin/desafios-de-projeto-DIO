MSG = """_________________________________
   *****   Calculadora   *****
________________________________
Escolha a operação que deseja realizar:
[1] Soma\n[2] Subtração\n[3] Multiplicação\n[4] Divisão\n[0] Sair
> """


def somar(a, b)
  a + b
end

def subtrair(a, b)
  a - b
end

def multiplicar(a, b)
  a * b
end

def dividir(a, b)
  if b == 0
    "Erro: Divisão por zero não é permitida."
  else
    a / b
  end
end

def main()
  loop do
    print MSG
    operacao = gets.chomp.to_i
    break if operacao == 0

    puts "Digite o primeiro número:"
    a = gets.chomp.to_f
    puts "Digite o segundo número:"
    b = gets.chomp.to_f

    case operacao
    when 1
      resultado = somar(a, b)
      puts "Resultado: #{resultado}"
    when 2
      resultado = subtrair(a, b)
      puts "Resultado: #{resultado}"
    when 3
      resultado = multiplicar(a, b)
      puts "Resultado: #{resultado}"
    when 4
      resultado = dividir(a, b)
      puts "Resultado: #{resultado}"
    else
      puts "Operação inválida. Tente novamente."
    end

  end
end

main()
