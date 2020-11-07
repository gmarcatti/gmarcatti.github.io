################### Indexação ###########################
vetor <- c(1, 2, 34, 12, 2)
vetor
# indexação - acessar elementos por índices/posição
vetor[1] # primeiro elemento
vetor[2] # segundo elemento
vetor[3] # terceiro elemento
vetor[4] # quarto elemento
vetor[5] # quinto elemento
vetor[6] # sexto elemento - não existe elemento nessa posição (NA)
1:3
vetor[1:3]
vetor[3:5]
vetor[-3]
vetor[c(1, 3, 5)]
# Algoritmo de soma em um vetor
# while
vetor <- c(1, 2, 34, 12, 2)
# python: vetor = [1, 2, 34, 12, 2]
N <- length(vetor) # número de elementos
i <- 1 # contador/indexador
soma <- 0
while (i <= N) {
  soma = soma + vetor[i]
  i <- i + 1 # incremento
}
cat("A soma do vetor é", soma)

# for - v1
vetor <- c(1, 2, 34, 12, 2)
N <- length(vetor)
# 1:N = 1 2 3 4 5 - sequencia de elementos
soma <- 0
for (i in 1:N) { # for (i in 1:length(vetor))
  soma <- soma + vetor[i]
}
cat("A soma do vetor é", soma)


# for - v2
vetor <- c(1, 2, 34, 12, 2)
soma <- 0
for (elemento in vetor) {
  soma <- soma + elemento
}
cat("A soma do vetor é", soma)



