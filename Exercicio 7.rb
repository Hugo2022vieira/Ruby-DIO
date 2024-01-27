=begin
Exercício 7: Manipulação de Listas
1.	Crie duas listas, uma com números pares e outra com números ímpares.
2.	Concatene as duas listas e ordene os números em ordem crescente.
3.	Imprima a lista resultante.
=end

# Cria duas listas, uma com números pares e outra com números ímpares
pares = [2, 4, 6, 8, 10]
impares = [1, 3, 5, 7, 9]

# Concatena as duas listas
numeros = pares + impares

# Ordena os números em ordem crescente
numeros.sort!

# Imprime a lista resultante
puts numeros
