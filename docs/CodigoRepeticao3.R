#########################################
#####---------- Exemplo 1 ----------#####
# Obter o quadrado de elementos de um vetor
vetor <- c(1, 2, 34, 12, 2)
# Apenas imprimir na tela
for (i in 1:length(vetor)) {
  print(vetor[i]^2)
}
# Armazenar o resultado em um vetor
# Estratégia 1: Criar vetor
vetor <- c(1, 2, 34, 12, 2)
vet_quad <- c()
for (i in 1:length(vetor)) {
  quad <- vetor[i]^2
  vet_quad <- c(vet_quad, quad)
}
vet_quad

# Estratégia 2: Modificar vetor
vetor <- c(1, 2, 34, 12, 2)
vet_quad <- vector("numeric", length(vetor))
for (i in 1:length(vetor)) {
  quad <- vetor[i]^2
  vet_quad[i] <- quad
}
vet_quad

fun_quad1 <- function(vetor) {
  vet_quad <- c()
  for (i in 1:length(vetor)) {
    quad <- vetor[i]^2
    vet_quad <- c(vet_quad, quad)
  }
  return(vet_quad)
}

fun_quad2 <- function(vetor) {
  vet_quad <- vector("numeric", length(vetor))
  for (i in 1:length(vetor)) {
    quad <- vetor[i]^2
    vet_quad[i] <- quad
  }
  return(vet_quad)
}

system.time(fun_quad1(1:100000))
system.time(fun_quad2(1:100000))
system.time((1:100000)^2)

#########################################
#####---------- Exemplo 2 ----------#####
# Divisíveis 4
# Estratégia 1: criar vetor
vetor <- c(20, 2, 34, 12, 2)
div4 <- c()
for (i in 1:length(vetor)) {
  if (vetor[i] %% 4 == 0) {
    div4 <- c(div4, vetor[i])
  }
}
div4
# Estratégia 2: modificar vetor
# Versão 1
vetor <- c(20, 2, 34, 12, 2)
div4 <- vector("numeric", length(vetor))
for (i in 1:length(vetor)) {
  if (vetor[i] %% 4 == 0) {
    div4[i] <- vetor[i]
  }
}
div4
# Versão 2
vetor <- c(20, 2, 34, 12, 2)
div4_log <- vector("logical", length(vetor))
for (i in 1:length(vetor)) {
  if (vetor[i] %% 4 == 0) {
    div4_log[i] <- TRUE # verdadeiro
  }
}
div4_log
div4 <- vetor[div4_log]

