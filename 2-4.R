#esempio if-else 
x<- 4
if (x>5) {
  print(" x maggiore di 5")
} else {
  print("x minore o uguale a 5")
}

#esempio operatori logici AND
a<- 0
b<- 10
if(a>0 & b>0) {
  print("a e b positivi")
}

#esempio operatore logico OR 
if (a>0 | b>0){
  print("almeno uno tra a o b positivo ")
}

#esempio operatore logivo NOT
if (!a>0){
  print("a non è positivo")
}


#esercitazioni pratiche 
voto <-82
#determinare il grado del voto
if(voto>=90){
  print("A")
} else if(voto>=80) {
  print("B")
} else if (voto>=70) {
  print("C") 
} else {
  print("F")
}


#controllare se un numero è positivo, negativo o = 0
k<- -8
if(k>0){
  print("k positivo")
} else if(k<0) {
  print("k negativo")
} else {
  print("uguale a 0")
}


#trovare il massimo tra tre numeri 
a<-5
b<-8
c<-9
if(a>b & a>c) {
  print("a è il max ")
} else if(b>c & b>a) {
  print("b è il max")
} else if(c>a & c>b){
  print("c è il max")
}


#anno bisestile o no 
anno<- 365
if (anno ==366) { 
print("anno bisestile")
} else {
    print("anno normale")
}


#numero pari o dispari 
pari<- 3
if(pari %% 2 ==0){
  print("numero pari")
} else {
  print("numero dispari")
}


#ordinare tre numeri crescenti ( sarebbe decrescente)
a= 1
b= 0
c= 23
if(a>b & a>c & b>c){
  print(paste("ordine crescente", a, b , c))
}else if (a>b & a>c & c>b) {
  print(paste("ordine crescente", a, c, b))
} else if (b>a & b>c & a>c) {
  print(paste("ordine crescente", b, a, c))
} else if (b>a & b>c & c>a) {
  print(paste("ordine crescente", b, c, a))
} else if (c>a & c>b & a>b) {
  print(paste("ordine crescente", c, a, b))
} else if (c>a & c>b & b>a) {
  print(paste("ordine crescente", c, b, a))
}
