#creazione dei vettori per le colonne 
nomi_italiani <- c("Alessandro", "Andrea", "Antonio", "Beatrice", "Caterina", "Chiara", "Davide", "Elena", "Federico", "Francesca", "Gabriele", "Giulia", "Giovanni", "Laura", "Leonardo", "Lorenzo", "Luca", "Marco", "Maria", "Matteo", "Michela", "Nicola", "Paolo", "Roberto", "Sara", "Simone", "Valentina", "Valeria", "Vincenzo")
nomi <- sample(nomi_italiani, 100, replace = TRUE)
eta <- sample(18:80, 100, replace=TRUE)
redditi <- sample(c("basso", "medio", "alto"), 100, replace=TRUE)

#creazione del dataframe 
df <- data.frame(nome = nomi, eta = eta, reddito = redditi)

#esempi selezione 
df[3,2]
df[2,"eta"] 
#oppure
df[2,2,]
df$eta
df$eta[4] 
names(df) 
dim(df)
ncol(df) 
nrow(df) 
df[df$reddito=="alto",]


#età maggiore di 30 e reddito medio
df[df$eta > 30 & df$reddito == "medio",]

#eta compresa tra 30 e 60 o reddito alto 
df[df$eta>30 & df$eta<60 | df$reddito=="alto",]

#calcolo eta media, specificando un tipo di reddito
eta_media_reddito_medio<- mean(df$eta[df$reddito=="medio"])



#stessa cosa con la funzione
media<- function(df, tipo_reddito){
dataf<- df[df$reddito==tipo_reddito,]
return(mean(dataf$eta))
}

media(df, "medio")



#calcolo reddito più frequente 
frequenze_reddito <- table(df$reddito)
reddito_piu_frequente <- names(frequenze_reddito)[which.max(frequenze_reddito)]
print(reddito_piu_frequente)

#stesso con la funzione 
frequente<- function(df){
  return(which.max(table(df$reddito)))
}

frequente(df)


#Importare il dataset airquality e visualizzare i primi 8 elementi
data(airquality)
head(airquality,8)

#Filtrare i dati creando un dataframe solo per il mese di luglio
luglio<- airquality[airquality$Month==7,]

#Calcolare e stampare la concentrazione media di ozono per il mese di
#luglio, ricordandosi di filtrare gli eventuali valori mancanti (NA)
media<- mean(luglio$Ozone, na.rm = TRUE)
media

#Crea un DataFrame che rappresenta una tabella con le seguenti
#informazioni: Nome, Cognome, Punteggio titoli, Punteggio Colloquio
nomi_it = c("samu","cucca","anto","adele","leti","marianna","gabri","andre","ale","richi")
nomi = sample(nomi_it,100,replace=T)
cognomi_it = c("a","b","c","d","e","f","g","h","i","l")
cognomi = sample(cognomi_it ,100,replace=T)
ptitoli=sample(1:5,100,replace=T)
pcolloquio=sample(1:10,100,replace=T)
df2=data.frame(nomi=nomi,cognomi=cognomi,ptitoli=ptitoli,pcolloquio=pcolloquio)

#Calcola la media dei punteggi titolo e colloquio nel DataFrame creato
#nell’esercizio 1.
media_punteggi<- mean(df2$ptitoli)
media_coll<- mean(df2$pcolloquio)


#Aggiungi una nuova riga al DataFrame dell’esercizio 1 con i dati di
#un* nuov* student*.
nuovo_studente<- data.frame(nomi = "Marco", cognomi = "Bianchi", ptitoli = 5, pcolloquio = 10)
df2<- rbind(df2, nuovo_studente)


#Ordina il DataFrame dell’esercizio 1 in base al punteggio del colloquio
#in ordine decrescente.
nomi_it = c("samu","cucca","anto","adele","leti","marianna","gabri","andre","ale","richi")
nomi = sample(nomi_it,100,replace=T)
cognomi_it = c("a","b","c","d","e","f","g","h","i","l")
cognomi = sample(cognomi_it ,100,replace=T)
ptitoli=sample(1:5,100,replace=T)
pcolloquio=sample(1:10,100,replace=T)
df2=data.frame(nomi=nomi,cognomi=cognomi,ptitoli=ptitoli,pcolloquio=pcolloquio)

#Calcola la media dei punteggi titolo e colloquio nel DataFrame creato nell’esercizio 1.

media_punteggi <- c(mean(df2$ptitoli), mean(df2$pcolloquio))
media_punteggi

#Aggiungi una nuova riga al DataFrame dell’esercizio 1 con i dati di un* nuov* student*.

nuovo_studente <- data.frame(nomi = "Giuseppe", cognomi = "n", ptitoli = 5, pcolloquio = 9)
df2 <- rbind(df2, nuovo_studente)

#Ordina il DataFrame dell’esercizio 1 in base al punteggio del colloquio in ordine decrescente (da controllare)

df_ordered <- df2[order(df2$pcolloquio, decreasing = TRUE), ]
df_ordered

# Filtra il DataFrame dell’esercizio 1 per visualizzare solo gli studenti che hanno superato la soglia 
#sui titoli (punteggio maggiore o uguale a 6). Usare una funzione con parametri adeguati

soglia <- function(df2){
  df3 <- df2[df2$ptitoli >= 3, ]
  return(df3)
}

soglia(df2)

df2[df2$pcolloquio>=6,]
df2[df2$ptitoli >= 2, ]








#ES RIPETUTI 

df[df$eta > 30 & df$reddito == "medio",]
df[df$eta > 30 & df$eta < 60 | df$reddito == "alto",]

eta_media<- function(df, reddito){
  if(!is.data.frame(df)){
    stop("l'input deve essere un dataframe")
  }
  dataf<- df[df$reddito == reddito,]
  media<- mean(dataf$eta)
  return(media)
}

eta_media(df, "medio")



reddito<- function(df){
  if(!is.data.frame(df)){
    stop("l'input deve essere un dataframe")
  }
  lunghezza<- nrow(df)
  basso<-0
  medio<- 0
  alto<- 0
    for(i in 1:lunghezza){
      if(df$reddito[i] == "basso"){
        basso<- basso + 1
      } else if(df$reddito[i] == "medio") {
        medio<- medio + 1 
      } else {
        alto<- alto + 1
      }
      }
  redditi<- c(basso, medio, alto)
  massimo<- redditi[1]
  for(i in redditi){
    if(i > massimo){
      massimo <- i
    }
  }
  if(alto>basso & alto>medio) {
    return("alto è la frequenza maggiore")
  } else if(basso>medio & basso>alto) {
    return("basso è la frequenza maggiore")
  } else if(medio>alto & medio>basso){
    return("medio è la frequenza maggiore")
  }
  
    }

reddito(df)

table(df$reddito)

data("airquality")
airquality[1:8,]
# oppure 
head(airquality, 8)

luglio<- airquality[airquality$Month == 7,]
media_ozono<- mean(luglio$Ozone, na.rm = TRUE)


mean(df2$ptitoli)
mean(df2$pcolloquio)
nuovo_studente<- data.frame(nomi = "Matteo", cognomi = "cucca", ptitoli = 3, pcolloquio = 9)
df2<- rbind(df2, nuovo_studente)

df2[order(df2$pcolloquio, decreasing = TRUE), ]


filtra<- function(df2, soglia){
  punteggio<- df2[df2$ptitoli >= soglia,]
return(punteggio)
}
filtra(df2,3)

df2[df2$ptitoli >= 3,]












