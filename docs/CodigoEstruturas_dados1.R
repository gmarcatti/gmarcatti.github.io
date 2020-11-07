# vetor
x <- c(10.4, 5.6, 3.1, 6.4, 21.7) # numérico
x
print(x)
x[1]
x[5]
x[2:3]
x[x > 10]
x[x > 5 & x < 15]
y <- c("carro", "bicicleta", "moto") # caracter
y[1]
y[y == "bicicleta"]
z <- c(10.4, 44, 12.4, "carro")
z
z[1]
z[1] + 4 # erro

# Matriz
B <- matrix(c(2, 4, 3, 1, 5, 7), nrow = 3)
B2 <- matrix(c(2, 4, 3, 1, 5, 7), nrow = 3, byrow = TRUE)
t(B)
C <- matrix(c(7, 4, 2), nrow = 3)
cbind(B, C)
D <- matrix(c(6, 2), nrow = 1)
rbind(B, D)
A <- matrix(c(2, 4, 3, 1, 5, 10), nrow = 2, byrow = TRUE)
A
A[1, 2] # primeiro linha e segundo coluna
A[2, ]
A[ ,3]
A[ , 2:3]
A[ , c(1, 3)]
A %*% B
MA <- matrix(c(1, 3, 2, 5, 6 ,8, 2:11), nrow = 4)
solve(MA)

# lista
lista <- list(nome = "canela", n_fustes = 3, 
              dap_fustes = c(12.5, 14, 5))

lista
lista$nome
lista["nome"]
lista[["nome"]]
lista[1]
lista[[1]]
lista$dap_fustes[2]
lista$dap_fustes[2:3]
lista$dap_fustes[-3]
lista[[3]]
lista[[3]][2]

# data.frame ou tibble
library(readxl)
dados <- read_excel("G:/Meu Drive/Drive/Aulas/Algoritmos/Aulas2020_1remoto/dados/dados.xlsx")
dados
print(dados, n = 30)
dados[1, "volume"]
dados[1, ]
dados[1:4, ]
dados[ , 1]
dados[ , c(2, 5)]
dados[ , 5]
dados[ , "volume"]
dados[ , c("volume", "idade")]
dados[["volume"]]
dados$volume
# filtro do excel via indexação
dados[dados$genotipo == "G11", ]
dados[dados$genotipo == "G11", "volume"]

# filtro do excel via função subset
subset(dados, genotipo == "G11")
subset(dados, genotipo == "G11", select = volume)

plot(dados$idade, dados$volume)
lm(volume ~ idade, dados)
lm_geral <- lm(volume ~ idade, dados)
lm_geral
summary(lm_geral)

plot(dados$idade, dados$volume)
abline(lm_geral, col = "red")

# identificar quantidade de ajustes (repetições)
uni_gen <- unique(dados$genotipo)
N <- length(uni_gen)

# Estrutura tibble para receber parametros do modelo
# genetico, b0, b1
# install.packages("tibble")
require(tibble)
coefs <- tibble(genotipo = vector("character", N),
                b0 = vector("numeric", N),
                b1 = vector("numeric", N))
coefs
print(coefs, n = 24)

# como acessar os elementos de interesse 
lm_geral
str(lm_geral)
lm_geral$coefficients
lm_geral$coefficients[1]
lm_geral$coefficients[[1]]
lm_geral$coefficients[[2]]
# Processo de repetição (loop for)
for (i in 1:N) {
   dados_i <- subset(dados, genotipo == uni_gen[i])
   lm_i <- lm(volume ~ idade, dados_i)
   coefs[i, "genotipo"] <- uni_gen[i]
   coefs[i, "b0"] <- lm_i$coefficients[[1]]
   coefs[i, "b1"] <- lm_i$coefficients[[2]]
}
coefs
print(coefs, n = N)
