##Uma companhia elétrica fabrica resistores que têm uma resistência 
##média de 100Ω e um desvio padrão de 10Ω. A distribuição de 
##resistência é normal. Qual a probabilidade de uma amostra aleatória de 
##25 resistores ter uma resistência média menor que 95Ω? Classifique 
##este evento quanto ao resultado probabilístico.


## Primeiro devemos encontrar o erro padrão da média amostral: 
dp <- 10/sqrt(25)
## Agora podemos encontrar a probabilidade:
pnorm(95, 100, dp, lower.tail = TRUE)
## Portanto, P( ≤ 95) ≈ 0,0062 ; é um evento pouco provável.


