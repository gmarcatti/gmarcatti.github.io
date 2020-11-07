# 1 - Área de solo exposto acima de 5% do total
# 2 - Área máxima isolada de solo exposto maior 5 ha
#install.packages("raster", dep = TRUE)
require(raster)
arq <- "G:\\Meu Drive\\Drive\\Aulas\\Algoritmos\\Aulas2020_1remoto\\dados\\uso_terra.tif"
uso_r <- raster(arq)
uso_r
plot(uso_r)
plot(uso_r, col = c("green", "orange", "red"))

recup_prio <- function(uso_r){
  uso_pixel = table(uso_r[])
  porc_uso <- 100 * uso_pixel / sum(uso_pixel)
  porc_solo_ex <- porc_uso[3]
  mascara <- setValues(uso_r, NA)
  mascara[uso_r == 3] <- 3
  isolados <- clump(mascara)
  isolados_pixel <- table(isolados[])
  area_pixel <- 40 * 40
  isolados_area <- isolados_pixel * area_pixel / 10000
  isolados_max <- max(isolados_area)
  if (porc_solo_ex > 5 | isolados_max > 5) {
    cat("***** PRIORITÁRIO *****")
  } else {
    cat("Não prioritário")
  }
}

recup_prio(uso_r)



func_controle <- function(nivel) {
  if (nivel <= 2) {
    cat("Sem danos econômicos: NÃO TENTAR CONTROLAR! \n")
    cat("Manter programação normal de controle de pragas. \n")
  } else if (nivel > 2 & nivel <= 4) {
    cat("Sem danos econômicos: NÃO TENTAR CONTROLAR! \n")
    cat("Intensificar amostragem \n")
    if (nivel > 2 & nivel <= 3) {
      cat("Repetir a amostragem de 4 em 4 dias.")
    } else if (nivel > 3 & nivel <= 3.5) {
      cat("Repetir a amostragem de 2 em 2 dias.")
    } else if (nivel > 3.5 & nivel <= 4) {
      cat("Repetir a amostragem todos os dias.")
    }
  } else if (nivel > 4 & nivel <= 20) {
    cat("Ação!!! TENTAR CONTROLAR! \n")
  } else {
    cat("Não adianta fazer nada: NÃO TENTAR CONTROLAR! \n")
    cat("Os dados econômicos já são elevados demais. \n")
  }
}

func_controle(1.5)
func_controle(2.3)
func_controle(3.2)
func_controle(3.7)
func_controle(5.5)
func_controle(22.3)


