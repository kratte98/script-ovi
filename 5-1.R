#esempio lapply
lista <- list(a= 1:5, b=6:10)
lapply(lista, sqrt)


#esempio sapply 
lista <- list(a= 1:5, b=6:10)
sapply(lista, mean)


#esempio vapply
lista <- list(a= 1:5, b=6:10)
vapply(lista, mean, numeric(1))


#esempio mapply.  -> se non sono della stessa lunghezza da errore 
v1<- 5:7
v2<- 1:3
mapply(sum, v1, v2)


#esempio apply
matrice<- matrix(1:9, nrow = 3, byrow = FALSE)
apply(matrice, 1, mean)


#apply personalizzate 
applica_se_trovi <- function(m, n, func){
  if (!is.matrix(m)){
    stop("La funzione si applica solamente su matrici!")
  }
  
  nr <- nrow(m)
  nc <- ncol(m)
  
  i <- 1
  while(i <= nr){
    j <- 1
    while(j <= nc){
      val <- m[i, j]
      if(val == n){
        m[i, j] <- func(val)
      }
      j <- j + 1
    }
    i <- i + 1
  }
  
  return (m)
}

matrice_esempio <- matrix(sample(1:100, 12, replace = TRUE), 3, 4)
matrice_risultato <- applica_se_trovi(matrice_esempio, 23, sqrt)

typeof(matrice_esempio)
typeof(matrice_risultato)

matrice_esempio_2 <- matrix(round(runif(12, 1, 100),0), 3, 4)
matrice_esempio_2

typeof(matrice_esempio_2)

matrice_risultato_2 <- applica_se_trovi(matrice_esempio_2, 83, sqrt)
matrice_risultato_2




applica_se <- function(m, n, margin, func){
  if (!is.matrix(m)){
    stop("La funzione si applica solamente su matrici!")
  }
  
  if (margin != 1 & margin != 2){
    stop("Il parametro margin deve valere 1 o 2")
  }
  
  nr <- nrow(m)
  nc <- ncol(m)
  
  i <- 1
  while(i <= nr){
    j <- 1
    while(j <= nc){
      val <- m[i, j]
      if(val == n){
        if(margin == 1){ # applica su riga
          m[i, ] <- func(m[i, ])
        } else {
          m[, j] <- func(m[, j])  
        }
      }
      j <- j + 1
    }
    i <- i + 1
  }
  
  return (m)
}

matrice_esempio
applica_se(matrice_esempio, 46, 1, mean)
applica_se(matrice_esempio, 72, 2, mean)








#ES RIFATTI 
applica_se_trovi<- function(m, x, funzione){
  if(!is.matrix(m)){
    stop("l'input deve essere una matrice")
  }
  nr<- nrow(m)
  nc<- ncol(m)
  for(i in 1:nr){
    for(j in 1:nc){
      val<- m[i,j]
      if(val == x){
        m[i,j]<- funzione(m[i,j])
      }
    }
  }
  return(m)
}

numeri<- sample(1:50, 9)
matrice<- matrix(numeri, 3, 3)
applica_se_trovi(matrice, 48, sqrt)




applica_se_trovi<- function(m, x, margine, funzione){
  if(!is.matrix(m)){
    stop("l'input deve essere una matrice")
  }
  if(margine != 1 & margine != 2){
    stop("il margine può essere solo 1 o 2")
  }
  nr<- nrow(m)
  nc<- ncol(m)
  for(i in 1:nr){
    for(j in 1:nc){
      val<- m[i,j]
      if(val == x){
        if(margine ==1){
        m[i,]<- funzione(m[i,])
        } else {
          m[,j] <- funzione(m[,j])
      }
    }
    }
  }
  return(m)
}


matrice<- matrix(numeri, 3, 3)
applica_se_trovi(matrice, 48, 1, sqrt)
  



