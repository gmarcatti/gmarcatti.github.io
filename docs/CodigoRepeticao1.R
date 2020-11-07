
# Operadores: while, repeat, for
cat("Bom dia R! - 1\n")
cat("Bom dia R! - 2\n")
cat("Bom dia R! - 3\n")
cat("Bom dia R! - 4\n")
cat("Bom dia R! - 5\n")

# Operador while - enquanto
i <- 1 # contator
N <- 5 # quantidade de vezes
while (i <= N) {
  cat("Bom dia R! -", i, "\n" )
  i <- i + 1
}

# Operador repeat - repetir
i <- 1 # contator
N <- 5 # quantidade de vezes
repeat {
  cat("Bom dia R! -", i, "\n" )
  if(i >= 5) break
  i <- i + 1
}

# Operador for - repita para toda sequência (vetor)
vetor1 <- c(1, 2, 3, 4, 5)
vetor2 <- seq(1, 5, 1)
vetor3 <- 1:5

N <- 5 # quantidade de vezes
for(i in 1:N) {
  cat("Bom dia R!", i, "\n")
}

