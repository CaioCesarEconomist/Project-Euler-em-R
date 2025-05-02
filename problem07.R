# ============================================================
# 📘 Project Euler - Problem 07
# 🔗 Link: https://projecteuler.net/problem=07
#
# 📝 Enunciado:
# Listando os primeiros seis números primos: 2, 3, 5, 7, 11 e 13,
# vemos que o 6º primo é 13.
#
# Objetivo:
# Encontrar o 10.001º número primo.
# ============================================================

# 🎯 Estratégia de resolução:
# - Passo 1: Criar uma função que verifica se um número é primo
# - Passo 2: Iterar pelos números naturais, contando quantos primos foram encontrados
# - Passo 3: Parar quando o 10.001º primo for identificado e retornar esse valor

# 💻 Implementação:
is_prime <- function(n) {
  if (n <= 1) return(FALSE)
  if (n == 2) return(TRUE)
  if (n %% 2 == 0) return(FALSE)
  
  for (i in seq(3, floor(sqrt(n)))) {
    if (n %% i == 0) return(FALSE)
  }
  
  return(TRUE)
}


solve_problem <- function() {
  count <- 0
  temp <- 0
  while (count < 10000) {
    temp <- temp + 1
    if (is_prime(temp)) {
      count <- +count + 1
    }
  }
  return(temp)
}

# ▶ Executar e exibir resultado:
resultado <- solve_problem()
cat("Resultado:", resultado, "\n")
