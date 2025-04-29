# ============================================================
# 📘 Project Euler - Problem 04
# 🔗 Link: https://projecteuler.net/problem=04
#
# 📝 Enunciado:
# Um número palíndromo é aquele que pode ser lido da mesma forma da esquerda para a direita e vice-versa.
# O maior palíndromo feito a partir do produto de dois números de 2 dígitos é 9009 = 91 × 99.
#
# Encontre o maior palíndromo que pode ser obtido a partir do produto de dois números de 3 dígitos.
#
# 🎯 Objetivo:
# Encontrar o maior número palíndromo que seja resultado do produto de dois números de 3 dígitos (entre 100 e 999).
# ============================================================

# 🎯 Estratégia de resolução:
# - Passo 1: Iterar por todos os pares de números de 3 dígitos (100 a 999)
# - Passo 2: Calcular o produto de cada par
# - Passo 3: Verificar imediatamente se o produto é um número palíndromo
# - Passo 4: Se for palíndromo e maior que o anterior, armazenar como o novo maior valor

# 💻 Implementação:
reverse_character <- function(character) {
  vector_character <- strsplit(character, NULL)[[1]]
  revert_vector_character <- rev(vector_character)
  reverted_character <- paste0(revert_vector_character, collapse="")
  return(reverted_character)
}

verify_if_number_is_palindrome <- function(number) {
  number_as_character <- as.character(number)
  return(number_as_character == reverse_character(number_as_character))
}

solve_problem <- function() {
  largest_palindrome_found <- 0
  numbers_three_digits <- 100:999
  for(i in numbers_three_digits) {
    for(j in numbers_three_digits) {
      product <- i*j
      if (
        product > largest_palindrome_found && 
        verify_if_number_is_palindrome(product)
      ) {
        largest_palindrome_found <- product
      }
    }
  }
  return(largest_palindrome_found)
}

# ▶ Executar e exibir resultado:
resultado <- solve_problem()
cat("Resultado:", resultado, "\n")
