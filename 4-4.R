#PER UTILIZZARE DPLYR BISOGNA PERFORZA AVERE UN DATAFRAME

library(dplyr)
data(mtcars)

#filtraggio dati per mpg >20
mtcars_filtered<- mtcars %>%
  filter(mpg>20)

#selezione colonne 
mtcars_selected<- mtcars %>%
  select(mpg,cyl)


#aggiunta nuova colonna
mtcars_new_column<- mtcars%>%
  mutate(hp_per_cyl = hp / cyl)

#raggruppamento numero cilindri e
#calolo media "mpg"
mtcars_grouped<- mtcars %>%
  group_by(cyl) %>%
  summarise(mean_mpg = mean(mpg))

#unione dati in base alla colonna cyl
categoria_cilindrata<- data_frame(cyl = c(8, 6, 4),c("Alta cilindrata", "Media cilindrata", "Bassa cilindrata"))
mtcars_merged<- mtcars %>%
  left_join(categoria_cilindrata, by = "cyl")

#ordinamento dei dati in base alla colonna "mpg"
mtcars_ordered<- mtcars %>%
  arrange(mpg)


#ESERCITAZIONE TITANIC 
data(Titanic)
summary(Titanic)
glimpse(Titanic)
data<- data.frame(Titanic)

data_surv<- data %>% filter(Survived == "Yes")
data_nosurv<-data %>% filter(Survived == "No")

num_surv<- sum(data_surv$Freq)
num_nosurv<- sum(data_nosurv$Freq)

df_survival<- data_frame(
  label = c("N_survived", "N_died"),
  number = c(num_surv, num_nosurv)
)

grafico_barre<- ggplot(data = df_survival, aes(x = label, y = number, fill = label)) + 
  geom_bar(stat = "identity", show.legend = FALSE) + 
  labs(title = "plot survival", x = "status", y = "Number" )


#ESERCITAZIONE SU MTCARS
data(mtcars)
summary(mtcars)
glimpse(mtcars)

#nuova colonna
mtcars_colonna<- mtcars %>%
  mutate(disp_to_hp_ratio = disp/hp)

minimo<- min(mtcars$hp)
massimo<- max(mtcars$hp)
media<- mean(mtcars$hp)

#grafico per relazione e istogramma
library(ggplot2)
dati<- data.frame(mtcars)
grafico<- ggplot(data = dati, aes(x = hp, y = wt)) + 
  geom_point()

istogramma<- ggplot(data = dati, aes(x = hp)) + 
  geom_histogram()

#metodo alternativo più completo
istogramma_potenza <- ggplot(data = mtcars, aes(x = hp)) +
  geom_histogram(binwidth = 20, fill = "skyblue", color = "black") +  
  labs(x = "Potenza (hp)", y = "Frequenza", title = "Distribuzione della potenza dell'auto")


#filtrare in base al numero di marce
mtcars_marce<- mtcars %>% 
  filter(gear == 4)

#raggruppare per numero di cilindri 
mtcars_grouped <- mtcars %>% 
  group_by(cyl) %>%
  summarise(media_hp = mean(hp))






