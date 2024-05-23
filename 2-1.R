#struttura interna delle liste 
x1<- list(c(1,2),c(3,4))
x2<- list(list(1, 2), list(3, 4))
x3<- list(1, list(2,list(3)))

#creare lista x4 che contiene un vettore di stringhe, una lista di stringhe e e un altro vettore numerico 
a<- c("aa", "bb", "cc")
b<- list("dd", "ee")
c<- c(5, 7, 2, 4)
x4<- list(a, b, c )
x4

#x5 una lista che contiene una lista di vettori 
x5<- list(
  lista1= c(6, 7),
  lista2= c(9,10)
)
xx5 <- list(list(v1, v2, v3))

#x6 lista che contiene 3 liste, di cui la prima con 3 tipi di dati diversi 

a<- list(1, "ciao", c(TRUE, FALSE))
b<- list("bella")
c<- list(200)
lista<- list(a,b,c)

#oppure

lista2<- list(
  a<- list(1, "ciao", c(TRUE, FALSE)),
  b<- list("bella"),
  c<- list(200)
)






