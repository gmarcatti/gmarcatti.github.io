#----------------------------------------------------#
################# Exemplo 1 ##########################
#----------------------------------------------------#
receitas <- 6000
custos <- 7000
lucro <- receitas - custos
#----------------------------------
if (lucro > 0) {
  cat("O lucro foi de R$", lucro)
}

#----------------------------------
aval_econ <- function(receitas, custos){
  lucro <- receitas - custos
  if (lucro > 0) {
    cat("O lucro foi de R$", lucro)
  } else{
    cat("O prejuízo foi de R$", abs(lucro))
  }
  return(lucro)
}
proj1 <- aval_econ(5000, 4000)
proj1

proj2 <- aval_econ(5000, 6000)
proj2

proj3 <- aval_econ(5000, 5000)
proj3
#---------------------------------
aval_econ <- function(receitas, custos){
  lucro <- receitas - custos
  if (lucro > 0) {
    cat("O lucro foi de R$", lucro)
  } else if (lucro == 0 ) {
    cat("Nem lucro e nem prejuízo")
  } else{
    cat("O prejuízo foi de R$", abs(lucro))
  }
  return(lucro)
}
proj1 <- aval_econ(7000, 9000)
proj1
proj2 <- aval_econ(10000, 6500)
proj2
proj3 <- aval_econ(5000, 5000)
proj3
lucro_total <- proj1 + proj2 + proj3
lucro_total

#----------------------------------------------------#
################# Exemplo 2 ##########################
#----------------------------------------------------#
receitas <- 11000
custos <- 5000
area2020 <- 200
area_plantio <- function(receitas, custos, area2020){
  prop <- receitas / custos
  if (prop <= 1) {
    area2021 <- area2020
    cat("Área de plantio para 2021 (0%):", area2021, "ha\n")
  } else if (prop <= 1.5) {
    area2021 <- area2020 * 1.2
    cat("Área de plantio para 2021 (20%):", area2021, "ha\n")
  } else if (prop <= 2) {
    area2021 <- area2020 * 1.5
    cat("Área de plantio para 2021 (50%):", area2021, "ha\n")
  } else {
    area2021 <- area2020 * 2
    cat("Área de plantio para 2021 (100%):", area2021, "ha\n")
  }
  return(area2021)
}

area_prox <- area_plantio(12000, 5500, 150)

