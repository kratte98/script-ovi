x <- c("one", "two", "three", "four", "five")
x[c(3, 2, 5)]
x[c(1, 1, 5, 5, 5, 2)]

#valori negativi fanno rimuovere i valori in quelle posizioni
x[c(-1, -3, -5)]


x <- c(10, 3, NA, 5, 8, 1, NA)

#valori non mancanti 
x[!is.na(x)]

#valori pari o macanti 
x[x %% 2 == 0]

#sottoselezionare un vettore nominato 
x <- c(abc = 1, def = 2, xyz = 5)
x[c("xyz", "def")]

