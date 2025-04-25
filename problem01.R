# ============================================================
# 📘 Project Euler - Problem 1
# 🔗 https://projecteuler.net/problem=1
#
# 📝 Enunciado:
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Objetivo: Find the sum of all the multiples of 3 or 5 below 1000.
# ============================================================

# 💻 Implementação:
solve_problem <- function() {
  numbers <- 1:999
  multiples <- numbers[numbers %% 3 == 0 | numbers %% 5 == 0]
  return(sum(multiples))
}

# ▶ Executar e exibir resultado:
resultado <- solve_problem()
cat("✅ Sum of multiples of 3 or 5 below 1000:", resultado, "\n")
