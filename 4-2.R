data(mtcars)

#auto con cilindri maggiori di 4 
auto_maggiori4<- mtcars[mtcars$cyl>4,]  

#solo colonne mpg, cyl, hp, gear
# Selezioniamo solo le colonne "mpg", "cyl", "hp" e "gear"
mtcars_selezionato <- mtcars[,c("mpg", "cyl", "hp", "gear")]


# Stampiamo il risultato
print(mtcars_selezionato)


#Rinominare la colonne mpg in kml (km per litro) e di conseguenza
#trasformare i dati contenuti (fattore di conversione = 0.425144)
names(mtcars)[names(mtcars) == 'mpg'] <- "kml"
mtcars$kml<- mtcars$kml*0.425144



#oppure
library(dplyr)
rename(mtcars, kml = mpg)


#Salvare il risultato in un file CSV chiamato mtcars2.csv
write.csv(mtcars, file = "mtcars2.csv", row.names = FALSE)
print("File salvato con successo come 'mtcars2.csv'.")

#Creare uno script separato per analizzare il file CSV mtcars2.csv
mtcars2 <- read.csv("mtcars2.csv")

#Creare la tabella di frequenza su kml
tabella_frequenza<- table(mtcars2$kml)

#Provare a studiare ed usare la funzione cut su kml, e riapplicare la
#tabella di frequenza
mtcars$kml_factor <- cut(mtcars$kml, breaks = 3, labels = c("basso", "medio", "alto"))
mtcars$kml_factor <- cut(mtcars$kml, breaks = 3, include.lowest = TRUE)
print(table(mtcars$kml_factor))



#altro esempio cut
vett <- sample(1:100, 100, replace = TRUE)
fvett <- cut(vett, breaks = 3, labels = c("basso", "medio", "alto"))
fvet<- cut(vett, breaks = 3)
table(fvet)
print(fvett)













#ES RIPETUTI 
mtcars[mtcars$cyl > 4,]
mtcars[,c("mpg", "cyl", "hp", "gear")]
mtcars$mpg<- mtcars$mpg*0.425144
names(mtcars)[names(mtcars) == "mpg"]<- "kml"
