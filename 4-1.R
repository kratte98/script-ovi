# Primo esempio di factor
vettore <- c("A", "B", "A", "C", "B")
fattore <- factor(vettore)
print(fattore)


# Esempio di factor con livelli ed etichette specificate
vettore <- c(3, 2, 5, 1, 4, 3, 1, 2, 5)
livelli <- c(1, 2, 3, 4, 5)
etichette <- c("Insufficiente", "Sufficiente", "Buono",
               "Ottimo", "Eccellente")
fattore <- factor(vettore, levels = livelli, labels =etichette)
print(fattore)

#tabella di frequenza in R
vettore <- c("A", "B", "A", "C", "B")
tabella_frequenza<- table(vettore)


#usare la funzione table per creare una tabella di frequenza
#per un vettore che rappresenta il lancio di un dado
lancio_dado<- sample(c(1:6), 100, replace = TRUE)
table(lancio_dado)


#Crea una tabella di frequenza per una variabile categorica che
#rappresenta il colore preferito di una classe di studenti
vettore <- sample(c("giallo", "verde", "blu", "rosso"), 100, replace = TRUE)
print(table(vettore))


#ESERCIZIO FINALE 
#1 Utilizza funzioni R per generare dati simulati per
#sesso, et`a e livello di istruzione di 100 individui.
s <- sample(c("M", "F"), 100, replace = TRUE)
eta <- sample(1:110, 100, replace = TRUE)
istr <- sample(c("Media", "Superiore", "Laurea", "Dottorato"), 100, replace = TRUE)
df <-data.frame(s, eta, istr)
ts <- table(df$s)
ti <- table(df$istr)


# Coercizione esplicita tramite parametri stringsAsFactors
df <- data.frame(vettore, stringsAsFactors = T)
str(df)
typeof(vettore)
typeof(df$vettore)









#ES RIPETUTI 

lanci<- sample(1:6, 100, replace = TRUE)
tabella<- table(lanci)

colori<- c("rosso", "bianco", "nero", "blu")
color<- sample(colori, 30, replace = TRUE)
table(color)







