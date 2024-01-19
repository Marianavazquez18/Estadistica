
#1.- Instalar paqueterias y abrir librerias
install.packages("tidytext")
library(tidytext)
install.packages("wordcloud")
library(wordcloud)
install.packages("dplyr")
library(dplyr)
install.packages("csv")
library(csv)
install.packages("RColorBrewer")
library(RColorBrewer)
#2.- Se exporta la matriz de datos con extención .csv 
textos1<-read.csv("pregunta1.csv")
head(textos1)

#3.- Se exporta la matriz con el diccionario de palabras que
# se va a utilizar para filtrar las palabras de forma manual.

stop_words1<-read.csv("stop_words1.csv")
View(stop_words1)

#4.- limpieza y generacion de nuevo texto

word_freq1 <- textos1 %>%
  unnest_tokens(output = word,
                input = texto,
                token = "words",
                format = "text") %>%
  anti_join(stop_words, by = c("word" = "texto")) %>%
  count(word)
# devuelve la frecuencia de palabras

View(word_freq1)
# en este paso se tendra que modificar el archivo de
# stop_word para eliminar las palabras que no tienen
# significado de forma manual y se tiene que volver a
# activar todo el scrip desde el paso no.2

#5.- Creacion de nube de palabras
wordcloud(words = word_freq1$word,
          freq = word_freq1$n,
          min.freq = 1,
          max.words = 20,
          colors =  c("blueviolet","cyan3", "deeppink"),
          random.order = F,
          random.color = F,
          scale = c(2 ,0.2),
          rot.per = 0.2)
