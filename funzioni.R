#FUNZIONI PERSONALIZZATE 


#Matteo Cucca


#my_mean
my_mean<- function(v){
  if(!is.numeric(v)) {
    stop("L'input deve essere numerico")
  }
  s<-0
  for(elem in v){
    s<- s+ elem
  }
  return(s/length(v))
}

vettore<- c(4, 1, 3, 5, 1)
my_mean(vettore)

#volessi creare un vettore con numeri casuali con una funzione 
vettore_casuale<- function(lun, min, max) {
  return(runif(lun, min, max))
}

v<- vettore_casuale(lun = 10, min = 0, max = 100)
my_mean(v)
mean(v)


#my_median
my_median<- function(v){
  if(!is.numeric(v)) {
    stop("L'input deve essere numerico")
  }
  vettore_ordinato<- sort(v)
  lunghezza<- length(vettore_ordinato)
  if(lunghezza %% 2 == 1) {
    mediana<- vettore_ordinato[(lunghezza + 1) %/% 2]
  } else { mediana<- (vettore_ordinato[lunghezza %/% 2] + vettore_ordinato[lunghezza / 2 + 1]) / 2
  }
  return(mediana)
}
v<- c(3, 5, 3, 1 , 4, 8)
my_median(v)
median(v)


#my_unique
my_unique<- function(v) {
  if(!is.numeric(v)) {
    stop("L'input deve essere numerico")
  } 
  vetto<-vector()
  for(elem in v) {
    if(!(elem %in% vetto)) {
      vetto<- c(vetto, elem)
    }
  }
  return(vetto)
}


vettore<- c(4, 9, 2, 4, 0, 7, 2, 9, 4)
my_unique(vettore)
unique(vettore)


#my_matrix_sum
my_matrix_sum<- function(m){
  if(!is.matrix(m)) {
    stop("L'input deve essere una matrice")
  }
  s<- 0
  for(elem in m) {
    s<- s+ elem
  }
  return(s)
}

matrice<- matrix(1:9, 3)
my_matrix_sum(matrice)
sum(matrice)


#my matrix transpose
my_matrix_transpose<- function(m){
  if(!is.matrix(m)) {
    stop("L'input deve essere una matrice")
  }
  
  nr<- nrow(m)
  nc<- ncol(m)
  matrice_vuota<-matrix(nrow = nr, ncol= nc)
  i<-1
  while(i <= nr){
    j<- 1
    while(j <= nc){
      matrice_vuota[i, j] <- m[j, i]
      j<- j+1
    }
    i<- i+1
  }
  return(matrice_vuota)
}
matrice<- matrix(1:9, 3)
my_matrix_transpose(matrice)
t(matrice)


#oppure facendo riga per colonna 
my_matrix_transpose<- function(m){
  if(!is.matrix(m)) {
    stop("L'input deve essere una matrice")
  }
  
  nr<- nrow(m)
  matri<-m
  i<-1
  while(i <= nr){
    matri[i,] <- m[, i]
    i<- i+1
  }
  return(matri)
}
matrice<- matrix(1:9, 3)
my_matrix_transpose(matrice)


#my_array_sum
my_array_sum<- function(a){
  if(!is.array(a)){
    stop("L'input deve essere un array")
  }
  somma<- 0
  for(elem in a){
    somma<- somma + elem
  }
  return(somma)
}

array<- array(1:18, dim = c(3, 3, 2))
my_array_sum(array)
sum(array)

#my_array_mean
my_array_mean<- function(a){
  if(!is.array(a)){
    stop("L'input deve essere un array")
  }
  lunghezza<- length(a)
  somma<- 0
  for(elem in a){
    somma<- somma + elem
  }
  media<- somma/lunghezza
  return(media)
}

array<- array(1:18, dim = c(3, 3, 2))
my_array_mean(array)
mean(array)


#my_array_sup
my_array_sup<- function(a,s){
  if(!is.array(a)){
    stop("L'input deve essere un array")
  }
  lunghezza<- length(a)
  somma<- 0
  for(elem in a){
    somma<- somma + elem
  }
  media<- somma/lunghezza
  risp<- media > s
  return(risp)
  
}

array<- array(1:18, dim = c(3, 3, 2))
my_array_sup(array,4)
mean(array) > 4



#my_list_length
my_list_length<- function(l){
  if(!is.list(l)){
    stop("L'input deve essere una lista")
  }
  conto<-0
  for (elem in l) {
    conto<- conto + 1
  }
  return(conto)
}


lista<- list(3, 4, "a", "b", "c")
my_list_length(lista)
length(lista)



#my_list_reverse
my_list_reverse<- function(l){
  if(!is.list(l)){
    stop("L'input deve essere una lista")
  }
  lunghezza<- length(l)
  lista_vuota_invertita<- vector("list", lunghezza)
  for(i in 1:lunghezza ){
    lista_vuota_invertita[i]<- l[lunghezza - i + 1]
  }
  return(lista_vuota_invertita)
}

lista<- list("a", "b", "c", "d", 5, 9, 0)
my_list_reverse(lista)
rev(lista)



#my_df_mean
my_df_mean<- function(d){
  if(!is.data.frame(d)){
    stop("L'input deve essere un dataframe")
  }
  nr<-nrow(d)
  nc<- ncol(d)
  vettore_medie<- numeric(nc)
  
  for(j in 1:nc) {
    colonna<- d[[j]]
    if(is.numeric(colonna)){
      somma<- sum(colonna)
      media<- somma / nr
      vettore_medie[j]<- media
    } else {
      vettore_medie<- NA
    }
  }
  return(vettore_medie)
}




nomi_italiani <- c("Alessandro", "Andrea", "Antonio", "Beatrice", "Caterina", "Chiara", "Davide", "Elena", "Federico", "Francesca", "Gabriele", "Giulia", "Giovanni", "Laura", "Leonardo", "Lorenzo", "Luca", "Marco", "Maria", "Matteo", "Michela", "Nicola", "Paolo", "Roberto", "Sara", "Simone", "Valentina", "Valeria", "Vincenzo")
nomi <- sample(nomi_italiani, 100, replace = TRUE)
eta <- sample(18:80, 100, replace=TRUE)
redditi <- sample(800:2500, 100, replace=TRUE)

df <- data.frame(nome = nomi, eta = eta, reddito = redditi)
my_df_mean(df)
colMeans(df[,2:3])



#my_df_filter
#ho cercato una condizione che tenesse conto di tutte le righe dove tutti 
#i valori numerici inferiori di una determinata condizione
my_df_filter <- function(df, condition){
  if(!is.data.frame(df)){
    stop("L'input deve essere un dataframe")
  }
  df_subset <- data.frame()
  for(i in 1:nrow(df)){
    if(condition[i]){
      df_subset <- rbind(df_subset, df[i, ])
    }
  }
  return(df_subset)
}

nomi_italiani <- c("Alessandro", "Andrea", "Antonio", "Beatrice", "Caterina", "Chiara", "Davide", "Elena", "Federico", "Francesca", "Gabriele", "Giulia", "Giovanni", "Laura", "Leonardo", "Lorenzo", "Luca", "Marco", "Maria", "Matteo", "Michela", "Nicola", "Paolo", "Roberto", "Sara", "Simone", "Valentina", "Valeria", "Vincenzo")
nomi <- sample(nomi_italiani, 100, replace = TRUE)
eta <- sample(18:80, 100, replace=TRUE)
peso <- sample(50:100, 100, replace=TRUE)

df <- data.frame(nome = nomi, eta = eta, peso = peso)

my_df_filter(df, eta > 60)
df[df$eta > 60,]









#es rifatti 
#
my_mean<- function(v){
  if(!is.vector(v)){
    stop("l'input deve essere un vettore")
  }
  lunghezza<-0
  for(y in v){
    lunghezza<- lunghezza + 1
  }
  somma<- 0
  for(i in v){
    somma<- somma + i
  }
  media<- somma / lunghezza
  return(media)
}

vettore<- c(4, 7, 9, 2, 7, 4)
my_mean(vettore)
mean(vettore)

#
my_median<- function(v){
  if(!is.vector(v)){
    stop("l'input deve essere un vettore")
  }
  ordinamento<- sort(v)
  lunghezza<- length(v)
  if(lunghezza %% 2 != 0){
    mediana<- ordinamento[(lunghezza + 1) / 2]
  } else {
    mediana<- (ordinamento[lunghezza / 2] + ordinamento[lunghezza / 2 + 1]) / 2
  }
  return(mediana)
}


vettore<- c(4, 7, 9, 2, 10, 6)
my_median(vettore)



#
my_unique<-function(v){
  if(!is.vector(v)){
    stop("l'input deve essere un vettore")
  }
  vettorev<- vector()
  for(i in v){
    if(!(i %in% vettorev)){
      vettorev<- c(vettorev, i)
    }
  }
  return(vettorev)
}
vetto<- c(3, 2, 9, 3, 2, 9)
my_unique(vetto)


#
my_matrix_sum<- function(m){
  somma<- 0
  nr<- nrow(m)
  nc<-ncol(m)
  for(i in 1:nr){
    for(j in 1:nc){
      somma<-somma + m[i,j]
    }
  }
  return(somma)
}

matrice<- matrix(1:9, 3, 3)
my_matrix_sum(matrice)
sum(matrice)


#
my_matrix_transpose<- function(m){
  nr<- nrow(m)
  nc<-ncol(m)
  matrice_vuota<- matrix(nrow = nr, ncol= nc)
  for(i in 1:nr){
    for(j in 1:nc){
      matrice_vuota[i,j]<- m[j,i]
    }
  }
  return(matrice_vuota)
}

matrice<- matrix(1:9, 3, 3)
my_matrix_transpose(matrice)

#oppure
my_matrix_transpose<- function(m){
  nr<- nrow(m)
  matri<-m
  for(i in 1:nr){
    matri[i,]<- m[,i]
  }
  return(matri)
}


#
my_array_sum<- function(a){
  somma<- 0
  for(i in a){
    somma<- somma + i
  }
  return(somma)
}

array<- array(1:8, dim = c(2, 2, 2))
my_array_sum(array)

#
my_array_sup<- function(a, s){
  lunghezza<- length(a)
  somma<- 0
  for(elem in a){
    somma<- somma + elem
  }
  media<- somma/lunghezza
  soglia<- media > s
  return(soglia)
}

numeri<- sample(1:40, 12, replace = TRUE)
array<- array(numeri, dim = c(2, 2, 3))
my_array_sup(array, 14)
mean(array)


#
my_list_length<- function(l){
  conto<- 0
  for(i in l){
    conto<- conto + 1
  }
  return(conto)
}

lista<-list(4, "ciao", c("TRUE","FALSE"), list(4), 5)
my_list_length(lista)


#
my_list_reverse<- function(l){
  lunghezza<- length(l)
  lista<-list()
  for(i in 1:lunghezza){
    lista[i]<- l[lunghezza - i + 1]
  }
  return(lista)
}

listaa<-list(4, "ciao", c("TRUE","FALSE"), list(4), 5)
my_list_reverse(listaa)


#
my_df_mean<- function(df){
  nr<- nrow(df)
  nc<- ncol(df)
  vettore_medie<- numeric(nc)
  for(j in 1:nc){
    colonna<- df[[j]]
    if(is.numeric(colonna)){
      vettore_medie[j]<- mean(colonna)
    }
  }
  return(vettore_medie)
}

my_df_mean(df)



#
my_df_filter<- function(df,filtro){
  dataf<- data_frame()
  nr<- nrow(df)
  for(i in 1:nr){
    if(filtro[i]){
      dataf<- rbind(dataf, df[i,])
    }
  }
  return(dataf)
}

my_df_filter(df, eta > 70)
