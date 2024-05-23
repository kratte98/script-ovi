#ciclo while 
x<-1 
while (x<=5) {
  print(paste("interazione",x))
  x<-x+1
}

#ciclo for 
for(i in 1:5){
  print(paste("iterazione", i))
}

#iterazione su un vettore
vettore <-c("a", "b", "c", "d", "e")
for(elemento in vettore){
  print(elemento)
}

#iterazione di una lista 
lista<-list("a", "b", "c", "d", "e")
for(elemento in lista) {
  print(elemento)
}

#esercitazioni pratiche
#calcolare la somma da 1 a 10
somma<-0
for (i in 1:10){
  somma<- somma+i
}
print(somma)

#oppure

i<-1
while(i<=10){
  somma<- somma+i
  i<-i+1
}



#stampare i numeri pari da 1 a 20 
for (i in 1:20){
  if (i%%2==0) {
    print(i)
  }
}



#ESERCIZI FINALI
#1 ciclo while per stampare numeri da 1 a 10 
x<-1
while (x<=10) {
  print(paste(x))
  x<-x+1
}

#2somma da 1 a 5 al quadrato con for
somma<-0
for (i in 1:5){
  somma<- somma + i^2
}
print(somma)


#3 ciclo while primi 5 numeri di fibonacci 
a <- 0
b <- 1
count <- 0
while (count < 10) {
  print(a)
  c <- a + b
  a <- b
  b <- c
  count <- count + 1
}


#4 ciclo for per trovare il massimo di un vettore di numeri 
vettore<- c(3, 5, 44, 383, 9, 66, 47393, 23)
massimo<- vettore[1]
for(i in vettore){
  if(i > massimo){
    massimo<-i
  }
}
print(massimo)


#ALTRI ESERCIZI 
#1.1 ciclo while che date due stringhe, restituisca la concatenazione di esse 
stringa1 <- "Ciao"
stringa2 <- "Mondo!"
risultato <- ""
lunghezza1 <- nchar(stringa1)
lunghezza2 <- nchar(stringa2)

i <- 1
while (i <= lunghezza1) {
  risultato <- paste(risultato, substr(stringa1, i, i), sep = "")
  i <- i + 1
}

i <- 1
while (i <= lunghezza2) {
  risultato <- paste(risultato, substr(stringa2, i, i), sep = "")
  i <- i + 1
}
print(risultato)


#lunghezza stringa con for 
stringa <- "Ciao mondo!"
lunghezza <- 0
for (carattere in strsplit(stringa, "")[[1]]) {
lunghezza <- lunghezza + 1
}
print(lunghezza)
print(lunghezza == nchar(stringa))

# inverti stringa
stringa <- "Ciao mondo!"
lunghezza <- nchar(stringa)
stringa_invertita <- ""
for (i in lunghezza:1) {
  stringa_invertita <- paste(stringa_invertita, substr(stringa, i, i), sep = "")
}
print(stringa_invertita)



# Scrivi un programma in R che data una frase, la frammenti in diverse
# parole, inserendole in un vettore. Dopdichè, cicli sul vettore e conti
# quante volte compare una certa parola all’interno della frase
stringa <- "La mela rossa è dentro una scatola rossa"
split <- strsplit(stringa, " ")
parole <- split[[1]]
parola_da_considerare = "rossa"
contatore <- 0
for (p in parole){
  if (parola_da_considerare == p)
    contatore <- contatore + 1
}
print(contatore)





























#concatenazione due stringhe
stringa1<- "ciao"
stringa2<- "mondo"
concatenazione<- ""
lunghezza1<- nchar(stringa1)
lunghezza2<- nchar(stringa2)
for(i in 1:lunghezza1){
  lettera<-substr(stringa1, i, i)
  concatenazione<-paste(concatenazione,lettera, sep = "")
}
for(y in 1:lunghezza2){
  lettera<- substr(stringa2, y, y)
  concatenazione<- paste(concatenazione, lettera, sep = "")
}
concatenazione


#lunghezza di una stringa
stringa<- "come stai"
conto<- 0
for(i in strsplit(stringa, "")[[1]]){
  conto<- conto + 1
}
conto


#stringa inversa
stringa<- "bella giornata"
inversa<- ""
lunghezza<- nchar(stringa)
for(i in lunghezza:1){
  lettera<- substr(stringa, i, i)
  inversa<- paste(inversa, lettera, sep = "")
}
inversa


#frammenta la stringa in diverse parole 
frase<- "la scatola rossa contiene la mela rossa"
parola<- "rossa"
vettore<- vector()
conto<-0
for(i in strsplit(frase, " ")[[1]]) {
  vettore<- c(vettore, i)
  if(i == parola) {
    conto<- conto + 1
  }
}
vettore
conto


