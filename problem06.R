# ============================================================
# 📘 Project Euler - Problem 06
# 🔗 Link: https://projecteuler.net/problem=06
#
# 📝 Enunciado:
# A soma dos quadrados dos primeiros dez números naturais é:
# 1² + 2² + ... + 10² = 385
# O quadrado da soma dos primeiros dez números naturais é:
# (1 + 2 + ... + 10)² = 55² = 3025
# A diferença entre eles é: 3025 - 385 = 2640
#
# Objetivo:
# Calcular a diferença entre o quadrado da soma e a soma dos quadrados
# dos primeiros 100 números naturais.
# ============================================================

# 🎯 Estratégia de resolução:
# - Passo 1: Calcular a soma dos quadrados de 1 a 100 (ou seja, 1² + 2² + ... + 100²)
# - Passo 2: Calcular a soma simples de 1 a 100 e depois elevar o resultado ao quadrado
# - Passo 3: Subtrair a soma dos quadrados do quadrado da soma

# 💻 Implementação:
solve_problem <- function() {
  range <- 1:100
  sum_of_squares <- sum((range)^2)
  sum <- sum(range)
  return(sum_of_squares - sum)
}

# ▶ Executar e exibir resultado:
resultado <- solve_problem()
cat("Resultado:", resultado, "\n")
