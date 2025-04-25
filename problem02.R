# ============================================================
# 📘 Project Euler - Problem 02
# 🔗 Link: https://projecteuler.net/problem=02
#
# 📝 Enunciado:
# Cada novo termo da sequência de Fibonacci é gerado pela soma dos dois termos anteriores.
# Começando com 1 e 2, os 10 primeiros termos são:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89...
#
# Ao considerar os termos da sequência de Fibonacci cujos valores não excedem quatro milhões,
# encontre a soma dos termos que são pares.
#
# 🎯 Objetivo:
# Calcular a soma de todos os números pares da sequência de Fibonacci que sejam menores ou iguais a 4.000.000.
# ============================================================

# 🎯 Estratégia de resolução:
# - Passo 1: Gerar os termos da sequência de Fibonacci até o valor limite (4.000.000)
# - Passo 2: Filtrar apenas os termos pares
# - Passo 3: Calcular a soma dos termos filtrados

# 💻 Implementação:
solve_problem <- function() {
  limit <- 4000000
  fibonacci <- c(1,2)
  while(tail(fibonacci, 1) <= limit) {
    next_value <- sum(tail(fibonacci, 2))
    if (next_value > limit) break
    fibonacci <- append(fibonacci, next_value)
  }
  return(sum(fibonacci[fibonacci %% 2 == 0]))
}

# ▶ Executar e exibir resultado:
resultado <- solve_problem()
cat("Resultado:", resultado, "\n")
