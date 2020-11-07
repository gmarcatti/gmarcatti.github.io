### Operações básicas e execução de funções
2 + 3*4
(2 + 3) * 4

log(10)
log(10, 3)
?log

# log( , 5)

log(x = 10, base = 5)
log(base = 5, x = 10)

log(10, 5) # logaritmo 10 na base 5
log(5, 10) # logaritmo 5 na base 10

exp(30)
exp(2.2)

tan(29)
?tan

### Objetos no R
x <- 20.5
y <- sqrt(25)
sqrt(25)
print(sqrt(25))
y
print(y)

#assign("z", sqrt(25))
#z
#k = sqrt(25)
#k
obj1 <- 25
obj2 <- sqrt(obj1)
obj1
obj2

const <- 25
raiz_const <- sqrt(obj1)

const <- 12.5

Nome <- "Eduardo"
# print(nome) # erro

rm(const)
rm(obj1)

cat("O valor do obj2 é:", obj2)
print(paste("O valor do obj2 é:", obj2))

#### Função
require(nnet)
?nnet
boas_vindas <- function(){
  cat("Seja bem vindo!")
}

boas_vindas()

boas_vindas <- function(nome){
  cat("Seja bem vindo", nome, "!")
}

boas_vindas("Eduardo")

boas_vindas <- function(nome = "Aluno"){
  cat("Seja bem vindo", nome, "!")
}
boas_vindas()
boas_vindas("Eduardo")

# Projeto 1
receita <- 6000
custo <- 4000
valor_lucro <- receita - custo
cat("O lucro foi de R$", valor_lucro, "\n")

lucro <- function(receita, custo){
  valor_lucro <- receita - custo
  cat("O lucro foi de R$", valor_lucro, "\n")
  return(valor_lucro)
}

lucro(6000, 4000)

proj1 <- lucro(6000, 4000)
proj2 <- lucro(7000, 6000)
proj3 <- lucro(6000, 6500)

lucro_total <- proj1 + proj2 + proj3
lucro_total

lucro(7000, 5000)
lucro(5000, 7000)
lucro(custo = 5000, receita = 7000)
