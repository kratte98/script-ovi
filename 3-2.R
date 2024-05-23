#creazione array
vettore <- c ( 1 , 2 , 3 , 4 , 5 )
matrice <- matrix ( 1 : 9 , nrow=3, ncol=3)
array <- array ( 1 : 8 , dim=c ( 2 , 2 , 2 ) )

#esempi creazione
v <- 1:6
a <- matrix(v, 2, 3)
b <- matrix(v, 2, 3, byrow = TRUE)
vv <- c(v,7:10)
c <- matrix(vv, nrow = 2)
d <- matrix(vv, ncol = 2)

a
b
c
d

vvv <- 1:21
h <- matrix(vvv,ncol=3)
h

#esempio accessi a matrici 
h[1,1]
h[1,]
h[,1]
h[1:3,1]
h[1:2, 1:3]
h[,3:1]

#creazione matrice etichettata 
v10<- 1:10
righe<- c("A", "B")
colonne<- c("V", "W", "X", "Y", "Z")
etichette<- list(righe, colonne)
matrix(v10, 2, 5, byrow = TRUE, dimnames = etichette)

#oppure 

matrice <- matrix(data = 1:9, nrow = 3, ncol = 3)
rownames(matrice) <- c("riga1", "riga2", "riga3")
colnames(matrice) <- c("colonna1", "colonna2", "colonna3")
nomi_righe <- rownames(matrice)
nomi_colonne <- colnames(matrice)
length(matrice)
nrow(matrice)
ncol(matrice)
dim(matrice)
print(matrice)



#operazioni tra matrici 
M<- matrix(1:4, 2, 2)
N<- matrix(c(1, 0, 0, 1), 2, 2)
M*N #questo non è il prodotto matriciale 
M*N==M
t(M)
solve(M)


#creazione array 
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
dim1 <- c("A1","A2","A3")
dim2 <- c("B1","B2","B3")
dim3 <- c("C1","C2")
array2<- array(c(vector1,vector2), dim = c(3,3,2), dimnames = list(dim1, dim2, dim3))


#esempi utilizzo 
sum(vector1)
length(vector2)
colSums(M)
rowSums(M)
mean(array2)

#codice per creare un vettore da 1 a 10 
vettore<- c(1:10)

#crea una matrice 2X2 con i numeri da 1 a 4 e calcola la somma delle righe 
matrice<- matrix(1:4, 2, 2)
rowSums(matrice)

#genera array 3D 2X2X3 e calcola la media di tutti gli elementi 
vettore<- c(1:12)
array<- array(c(vettore), dim=c(2, 2, 3))
mean(array)


#creare una matrice 3X3 con valori casuali compresi tra 1 e 10
vettore_casuale<- c(sample(1:10, 9))
matrice_casuale<-matrix(vettore_casuale, 3, 3)


#somma elementi di una 4X4 
matrice2<- matrix(1:16, 4, 4)
sum(matrice2)


#trova il massimo di ogni colonna di una 5X3
matrice3<- matrix(1:15, 5, 3)
apply(matrice3, 2, max)
#Apply:esegue una funzione alle righe(1) o alle colonne(2) di una matrice o un array.


#crea array 3D 2X2X3 con numeri interi casuali compresi tra 1 e 20, calcola la media di ogni strato 
#e il valore minimo di ogni riga 
vettore_casuale2<- sample(1:20, 16)
array3<- array(c(vettore_casuale2), dim= c(2, 2, 3))

apply(array3, 3, min)

for(i in 1:dim(array3)[3]){
  print(apply(array3[, , i], 1, min))
}


#matrice 2X2 con valori da 1 a 4 e calcolare la trasposta 
matrice4<- matrix(1:4, 2, 2)
t(matrice4)

#crea una matrice 3X3 con valori da 1 a 9 e calcola l'inversa 
matrice5<- matrix(1:9, 3, 3)
solve(matrice5)
#da errore perchè la matrice è singolare e quindi non è invertibile 


#array 3D 3X2X2 con valori da 1 a 12 e calcolare la somma 
#degli elementi della terza dimensione 
array4<- array(1:12, dim=c(3, 2, 2))
apply(array4, 3, sum)









#ES RIFATTI

#
numeri<- sample(1:10, 9, replace = TRUE)
matrice<- matrix(numeri, 3, 3)
sum(matrice)
apply(matrice, 2, max)
lapply(matrice, max)

numerii<- sample(1:20, 12, replace = TRUE)
array<- array(numerii, dim = c(2, 2, 3))
apply(array, 3, mean)
for(i in 1:dim(array)[3]){
  print(apply(array[,,i], 1, min))
}  
apply(array, 3, sum)


