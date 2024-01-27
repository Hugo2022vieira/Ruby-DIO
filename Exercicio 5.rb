=begin
Exercício 5: Strings
1. Crie uma string que contenha seu nome completo.
2. Use métodos de string para imprimir apenas o seu primeiro nome em maiúsculas.
=end

nome = "Steve Jobs"
# Imprime o primeiro nome em maiúsculas
puts nome.slice(0, nome.index(" ")).upcase
