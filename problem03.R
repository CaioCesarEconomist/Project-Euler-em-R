# ============================================================
# 📘 Project Euler - Problem 03
# 🔗 Link: https://projecteuler.net/problem=03
#
# 📝 Enunciado:
# Os fatores primos de 13195 são 5, 7, 13 e 29.
# Qual é o maior fator primo do número 600851475143?
#
# 🎯 Objetivo:
# Encontrar o maior fator primo do número 600851475143.
# ============================================================

# 🎯 Estratégia de resolução:
# - Passo 1: Gerar os termos divisores do número (600851475143)
# - Passo 3: Verificar se esses divisores são primos
# - Passo 4: Retornar o maior entre eles

# 💻 Implementação:
is_prime <- function(n) {
  if (n <= 1) return(FALSE)
  if (n == 2) return(TRUE)
  if (n %% 2 == 0) return(FALSE)
  
  for (i in seq(3, floor(sqrt(n)), by = 2)) {
    if (n %% i == 0) return(FALSE)
  }
  
  return(TRUE)
}

solve_problem <- function() {
  problem_number <- 600851475143
  numbers <- 1:floor(sqrt(problem_number))
  problem_number_factors <- numbers[problem_number %% numbers == 0]
  prime_factors <- sapply(problem_number_factors, is_prime)
  problem_prime_number_factors <- problem_number_factors[prime_factors]
  return(tail(problem_prime_number_factors,1))
}

# ▶ Executar e exibir resultado:
resultado <- solve_problem()
cat("Resultado:", resultado, "\n")
