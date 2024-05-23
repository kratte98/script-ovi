#generare un numero casuale 
casuale <- sample(1:100,2)

#arrotondare un numero decimale 
decimale<- 4.57373
arrotondato<- round(decimale, digits=0)

#esercizio stringa 
nome<-"mario"
lunghezza<- nchar(nome)
maiuscolo<- toupper(nome)

#concatenare due stringhe 
stringa1<-"hello"
stringa2<-"world"
concatenata<-paste(stringa1,stringa2)
concatenataa<-rbind(stringa1,stringa2)
concatenataaa<-c(stringa1, stringa2)

#estrarre una sottostringa
frase<-"questo è un esempio di sottostringa"
sottostringa<-substr(frase, start = 11, stop = 18)

#contare occorrenze di una lettera in una stringa 
parola<-"banana"
lettera<-"a"

#strsplit restitisce una lista di sottostringhe, quindi si prende la prima e unica lista 
#tra gli apici devi mettere cosa non vuoi prendere in considerazione
occorrenze<-sum(strsplit(parola,"")[[1]] == lettera)




#ricerca sottostringa
testo<-"questo è un esempio di sottostringa"
sottostringa<-"ciao"
risutato<-grepl(sottostringa, testo)

#sostituzione sottostringa
nuovo_testo<-gsub("esempio", "frammento", testo)



#esercizio stringhe 
stringa <- paste(letters, collapse = "")
print(stringa)

#primi 10 caratteri della stringa 
sottostringa<- substr(stringa, start=1, stop = 10)

#stampa solo gli elementi unici di una stringa 
caratteristringa <- "abbaccddeeff"
unici <- paste(unique(strsplit(caratteristringa,"")[[1]]), collapse = "")
print(unici)





#vettore dispari e aggiungere numero intero pari al vettore 
numeri <- c(1, 3, 5, 7, 9)
numeri <- c(numeri, 10)
print(numeri)

#calcolare la somma degli elementi di un vettore 
sommatoria_vettore<- sum(numeri)
print(sommatoria_vettore)

#ordinare un vettore in modo crescente 
vettore <- c(5, 3, 8, 1, 9)
ordine<- sort(vettore)
sort(vettore, decreasing = TRUE)
print(ordine)

#calcolare la media dei valori unici di un vettore 
vettore <- c(5, 3, 8, 1, 9, 9, 5, 8)
unici<- unique(vettore)
media_unici<- mean(unici)
print(media_unici)

#oppure 
media<- mean(unique(vettore))
print(media)

#nummeri da -100 a 100 ogni o,25 steps 
numeri<-seq(-100,100,0.25)

#radice quadrata degli elementi del vettore, ma solo elementi positivi
numeri_positivi<-numeri[numeri>=0]
radice<-sqrt(numeri_positivi)

# Selezioniamo i primi 50 elementi del vettore risultato
primi_50_elementi <- radice[1:50]
print(primi_50_elementi)

#eliminare cifre decimali, cioè numeri interi
interi<-round(primi_50_elementi, digits = 0)

#eliminare gli zeri, creando un nuovo vettore di numeri positivi
vettore_positivo<-interi[interi>0]


# Definiamo un vettore di nomi
nomi <- c("Alice", "Bob", "Charlie", "David")

# Definiamo un vettore di età
eta <- c(25, 30, 35, 40)

# Creiamo una lista dati contenente i vettori di nomi e di età
lista_dati <- list(nomi = nomi, eta = eta)

# Stampiamo la lista
print(lista_dati)

#aggiungere nuovo nome e età alla lista
nuovo_nome<- "Matteo"
nuova_eta<- 22
lista_dati$nomi<-c(lista_dati$nomi, nuovo_nome)
lista_dati$eta<-c(lista_dati$eta, nuova_eta)

#unire due liste 
lista1<- list(a=1, b=2)
lista2<- list(c=3, d=4)
lista_unione<- c(lista1, lista2)


#rimuovere un elemento dalla lista
lista<- list(a = 1, b = 2, c = 3)
lista<- lista[-which(names(lista)=="b")]




#nuova lista solo con gli elementi unici
lista_input <- list(a = 1, b = 2, c = 1, d = 3, e = 2)
nuova_lista <- unique(lista_input)
print(nuova_lista)


# Definiamo una lista di liste di numeri come input
lista_input <- list(
  lista1 = c(3, 1, 5, 2),
  lista2 = c(9, 4, 6, 8),
  lista3 = c(7, 2, 1, 5)
)

# Applichiamo la funzione di ordinamento a ciascuna lista
lista_ordinata <- lapply(lista_input, sort)


# Stampiamo la nuova lista di liste con gli elementi ordinati
print(lista_ordinata)




