# ============================================================
# 📘 Project Euler - Problem 05
# 🔗 Link: https://projecteuler.net/problem=05
#
# 📝 Enunciado:
# 2520 é o menor número que pode ser dividido por cada um dos números de 1 a 10 sem deixar resto.
# Qual é o menor número positivo que é **divisível igualmente** (sem resto) por todos os números de 1 a 20?
#
# 🎯 Objetivo:
# Encontrar o menor número positivo que seja divisível por todos os números inteiros de 1 até 20.
# ============================================================

# 🎯 Estratégia de resolução:
# - Passo 1: Entender que o problema é encontrar o mínimo múltiplo comum (MMC) de todos os números de 1 a 20.
# - Passo 2: Implementar uma forma de calcular o MDC entre dois números.
# - Passo 3: Implementar uma forma de calcular o MMC entre dois números.
# - Passo 4: Aplicar iterativamente o MMC entre todos os números do intervalo de 1 a 20.

# 💻 Implementação:
get_least_common_divisor <- function(first, second) {
  while(second != 0) {
    remnant <- first %% second
    first <- second
    second <- remnant
  }
  return(first)
} 

get_least_common_multiple <- function(first, second) {
  return((first * second) / get_least_common_divisor(first, second))
}

solve_problem <- function() {
  return(Reduce(get_least_common_multiple, 1:20))
}

# ▶ Executar e exibir resultado:  
resultado <- solve_problem()
cat("Resultado:", resultado, "\n")
