# Dicas R SHINY

```r

# Mudar a pasta atual.
# Pasta padrão (~): C:/Users/ssolution-nevesr/Documents/
setwd("~/_shiny/04-network_data")

# Mostrar a pasta atual
getwd()

# Mostma variável na tela
head( var_name )
print( "HELLO WORLD" )


nome = "Raffaell0"
msg <- sprintf("Olá %s!", nome)
cat( msg, "\n" ) // similar ao console.log() do javascript


# Instalar um pacote
install.packages("dplyr")


# Rodar apenas uma linha
CTRL + ENTER

## LIMPAR O CONSOLE
CTRL + L


# Mostrar tamanho de uma variável
dim(hflights)

# Cosultando um dataFrame
mtcars[2,] 					>> linha 2 apenas
mtcars[2:5,] 				>> linha 2 até linha 5.
mtcars[c(1, 3),] 			>> linha 1 e 3.
mtcars[mtcars$am == 0,] 	>> filtra um campo
mtcars[]$mpg 				>> mostra apenas uma coluna. ( chama de vetor )  

# Consultando um vetor
retorno["totalRatStart"] 	>> encontra um membro


# Remove todos os objetos ( exceto funções )
rm(list = setdiff(ls(), lsf.str()))

# número aleatório entre 1 e 6
sample(1:6, size=1)

# rodar d6 um milhão de vezes e ver o percentual
# d6 = dado de 6 faces. Nunca jogou D&D não?
library(magrittr)
sample(1:6, size=1000000, replace=TRUE) %>% table() %>% prop.table()


# atalho pra emcapsular funções
sum(sample(1:6, size=2, replace=TRUE))  >> mesma coisa que >> sample(6, size=2, replace=TRUE) %>% sum()


```
## VECTORS

```r

# tamanho do vetor
length(real_ages_prob)

# mais funções
https://data-flair.training/blogs/r-vector-functions/

# descobrir se um vetor eh factor ou outro tipo
class( rat_group$colors )

levels = sort( levels )


```
## DATA FRAMES

```r

# descobrir o tipo das colunas
str( mydata )

# mostra os índices de uma coluna ( tipo factor )
levels(mydata$Color)