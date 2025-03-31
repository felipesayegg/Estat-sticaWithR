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




##Um homem normal bebe cerca de 2L de água quando pratica atividades 
##ao ar livre, com desvio padrão de 0,7L.
##Você está planejando um dia inteiro na natureza com 50 homens e 
##levará 110L de água. Qual a probabilidade de você ficar sem água? 
## Classifique este evento quanto ao resultado probabilístico

##Primeiro devemos encontrar a média amostral:
  m <- 110/50
##Agora devemos encontrar o erro padrão da média amostral: 
    dp <- 0.7/sqrt(50)
##Agora podemos encontrar a probabilidade:
      pnorm(m, 2, dp, lower.tail = FALSE) 
##lower.tail = TRUE calcularia a probabilidade de o consumo médio ser menor que ou igual a 2,2L.
##lower.tail = FALSE é usado para calcular a probabilidade de a média ser maior que 2,2L.
##Portanto, P( ≥ 2) ≈ 0,0216 ; é um evento pouco provável  


      
      
##Os comprimentos das peças produzidas por determinada máquina têm 
##distribuição normal com uma média de 172mm e desvio padrão de 
##5mm. 
##Qual a probabilidade de uma amostra aleatória simples de 16 peças ter 
##comprimento médio entre 169mm e 175mm? Classifique este evento 
##quanto ao resultado probabilístico
      
      
      
      
##Primeiro devemos encontrar o erro padrão da média amostral: 
dp <- 5/sqrt(16)

## Agora podemos encontrar a probabilidade:
a <- pnorm(169, 172, dp, lower.tail = TRUE)
b <- pnorm(175, 172, dp, lower.tail = TRUE)
b - a
#Portanto, P(169 ≤ ≤ 175) ≈ 0,9836 ; é um evento muito provável




##Em uma população de indivíduos, constatou-se que possuem uma 
##altura média de 170cm com desvio padrão de 5cm. 
##Retirando uma a.a.s. dessa população com 40 indivíduos qual a 
##probabilidade de que a média amostral:
##a) Seja maior que 172cm? Classifique este evento quanto ao resultado 
##probabilístico.
##b) Esteja entre 168,3 e 171cm? Classifique este evento quanto ao 
##resultado probabilístico.
##c) Seja inferior ou igual a 168,7cm? Classifique este evento quanto ao 
##resultado probabilístico.


##Primeiro devemos encontrar o erro padrão da média amostral: 
dp <- 5/sqrt(40)

##Agora podemos encontrar a probabilidade:
pnorm(172, 170, dp, lower.tail = FALSE)
##Portanto, P( ≥ 172) ≈ 0,0057 ; é um evento pouco provável.

a <- pnorm(168.3, 170, dp, lower.tail = TRUE)
b <- pnorm(171, 170, dp, lower.tail = TRUE)
b - a
#Portanto, P(168,3 ≤ ≤ 171) ≈ 0,8812 ; é um evento muito provável.

pnorm(168.7, 170, dp, lower.tail = TRUE)
##Portanto, P( ≤ 168,7) ≈ 0,0500 ; é um evento pouco provável.
