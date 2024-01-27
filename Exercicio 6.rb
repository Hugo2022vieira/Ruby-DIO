=begin
Exercício 6: Hashes
1. Crie um hash representando um livro com as chaves titulo, autor e ano.
2. Imprima na tela uma frase usando as informações do hash, algo como: "O livro [titulo], escrito por [autor], foi publicado em [ano]."
=end

livro = {
  titulo: "1984",
  autor: "George Orwell",
  ano: 1949
}

puts format("O livro %s, escrito por %s, foi publicado em %s.", livro[:titulo], livro[:autor], livro[:ano])
