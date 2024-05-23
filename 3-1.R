mia_funzione<-function(x, y){
  risultato<- x+y
  return(risultato)
}
mia_funzione(5,4)


#scrivi una funzione che calcoli il quadrato di un numero
quadrato<- function(x){
  return(x^2)
}
quadrato(2)

#funzione che accetti una lista di numeri e ne restituisca la somma

fun_somma<- function(x){
  if(is.list(x)){
  risultato<- sum(x[[1]])
    return(risultato)
  }
}
lista<-list(1:10)
fun_somma(lista)

#crea funzione che prenda in input una stringa e restituisca la sua lunghezza, senza considerare spazi vuoti 
lunghezza<- function(x){
  if(is.character(x)==T) {
    return(nchar(gsub(" ","", x)))
  }
}
stringa<-"Matteo ha la febbre"
lunghezza(stringa)

#funzione che calcola deviazione standard di un vettore di numeri
svd<- function(x){
  return(sd(x))
}

vettore<- c(3, 5, 9)
svd(vettore)

#funzione che restituisca il massimo tra due numeri 
max<- function(x){
  return(x[which.max(x)])
}

vettore<- c(4, 1)
max(vettore)

#input una lista di parole e restituisca la parola più lunga
lunga<- function(x){
  if(is.list(x)==T){
    lunghezza<- nchar(x)
    indice_parolapiulungha<- which.max(lunghezza)
    parolapiulunga<- x[indice_parolapiulungha]
  }
  return(parolapiulunga)
}

l_parole <- list("Non", "mi", "va", "di", "fare", "niente")
lunga(l_parole)   


#funzioni ricorsive
fattoriale<- function(n){
  if(n<=1) {
    return(1)
  } else {
    return(n*fattoriale(n-1))
  }
}

print(fattoriale(5))


#funzioni anonime
quadrato<- function(x) x^2
quadrato(3)


#funzioni ad alto ordine
applica_funzione<- function(funzione, dati){
  risultato<- funzione(dati)
    return(risultato)
}

somma_valori<- applica_funzione(sum, c(1, 2, 3, 4, 5))
print(somma_valori)


#
x <- 100
miaf <- function(x){
  x <<- 5
  return(x)
}
miaf(x)
x
#*assegnado la variabile x con la simbologia "<<-" si esce dall'ambiente
#*locale della funzione e si va a cercare una variabile globale nominata "x"
#*nell'ambiente esterno (globale) della funzione.


#
massimo <- function(funzione,x){
  return(x[funzione(x)])
}


v <- runif(100)
massimo(which.max,v)








lunghezza<-function(x){
  if(is.character(x)){
   nospazi<- gsub(" ", "", x)
    return(nchar(nospazi))
  }
}

stringa<- "come va"
lunghezza(stringa)


svdd<- function(v){
  if(is.vector(v)){
    return(sd(v))
  }
}

vettore<- c(4, 8, 9, 2)
svdd(vettore)


max<- function(v){
  massimo<- v[1]
  for(i in v){
    if(i > massimo){
      massimo<-i
    }
  }  
  return(massimo)
}

vettore<- c(5, 2, 10, 5, 3, 9)
max(vettore)




lunga<- function(p){
  if(is.list(p)){
    massimo<-p[1]
    max<- nchar(massimo)
    for(i in p){
      lung<-nchar(i)
      if(lung > max){
      massimo<- i
      max<- lung
      }
    }
    return(massimo)
    }
}

lista<- list("ciao", "fantastico", "sole", "iebdiebdiebe", "tavor")
lunga(lista)


fattoriale <- function(x){
  if(x<=1){
    return(1)
  } else {
    return(x*fattoriale(x-1))
  }
  }


fattoriale(5)





















