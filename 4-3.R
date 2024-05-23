library(ggplot2)
dati<- data.frame(
  x= 1:10,
  y=rnorm(10)
)

#creazione scatter plot
grafico<- ggplot(data = dati, aes(x=x, y=y)) +
  geom_point()

#personalizzazione grafico 
grafico_personalizzato <- grafico + 
  labs(title = "scatter plot", x = "Asse X", y = "Asse Y") + 
  theme_linedraw()

#creazione line plot 
dati<- data.frame(
  x= 1:10,
  y=rnorm(10)
)
ggplot(data = dati,aes(x=x, y=y)) + 
  geom_line()

#creazione bar plot 
dati<- data.frame(
  categoria = c("A", "B", "C", "D"),
  valore = c(10, 20, 15, 25)
)
ggplot(data = dati,aes(x=categoria, y=valore)) + 
  geom_bar(stat = "identity")


# Creazione di un histogram
dati <- data.frame(
  x = rnorm(100)
)
ggplot(data = dati, aes(x = x)) +
  geom_histogram()

#creazione box plot
dati_boxplot <- data.frame(
  gruppo = rep(c("A", "B"), each = 50),
  valore = c(rnorm(50), rnorm(50, mean = 2))
)
ggplot(data = dati_boxplot, aes(x = gruppo, y = valore)) +
  geom_boxplot()


# Esempio di geom_density()
dati_density <- data.frame(
  x = rnorm(100)
)
ggplot(data = dati_density, aes(x = x)) +
  geom_density()


# Esempio di geom_text()
dati_text <- data.frame(
  x = 1:5,
  y = 1:5,
  label = c("A", "B", "C", "D", "E")
)
ggplot(data = dati_text, aes(x = x, y = y)) + geom_point() +
  geom_text(aes(label = label))

# Esempio di geom_label()
ggplot(data = dati_text, aes(x = x, y = y, label = label)) +
  geom_label()


# Esempio di geom_path()
dati_path <- data.frame(
  x = rnorm(10),
  y = rnorm(10)
)
ggplot(data = dati_path, aes(x = x, y = y)) +
  geom_path()

# Esempio di geom_smooth()
dati_smooth <- data.frame(
  x = 1:10,
  y = cumsum(rnorm(10))
)
ggplot(data = dati_smooth, aes(x = x, y = y)) +
  geom_point() +
  geom_smooth()

# Esempio di geom_area()
dati_area <- data.frame(
  x = 1:10,
  y = cumsum(abs(rnorm(10)))
)
ggplot(data = dati_area, aes(x = x, y = y)) +
  geom_area()

# Esempio di geom_polygon()
dati_polygon <- data.frame(
  x = c(1, 2, 2, 1),
  y = c(1, 1, 2, 2)
)
ggplot(data = dati_polygon, aes(x = x, y = y)) +
  geom_polygon()

# Esempio di geom_jitter()
dati_jitter <- data.frame(
  x = rep(c("A", "B"), each = 50),
  y = c(rnorm(50), rnorm(50, mean = 2))
)
ggplot(data = dati_jitter, aes(x = x, y = y)) +
  geom_point()
ggplot(data = dati_jitter, aes(x = x, y = y)) +
  geom_jitter()

# Esempio di geom_tile()
dati_tile <- data.frame(
  x = rep(1:5, 5),
  y = rep(1:5, each = 5),
  valore = 1:25
)
ggplot(data = dati_tile, aes(x = x, y = y, fill = valore)) +
  geom_tile()

# Esempio di geom_violin()
dati_violin <- data.frame(
  gruppo = rep(c("A", "B"), each = 50),
  valore = c(rnorm(50), rnorm(50, mean = 2))
)
ggplot(data = dati_violin, aes(x = gruppo, y = valore)) +
  geom_violin()

# Esempio di geom_errorbar()
dati_errorbar <- data.frame(
  gruppo = rep(c("A", "B"), each = 10),
  valore = rnorm(20),
  errore = runif(20, 0.1, 0.5)
)
ggplot(data = dati_errorbar, aes(x = gruppo, y = valore)) +
  geom_errorbar(aes(ymin = valore - errore, ymax = valore + errore), width = 0.2)

# Esempio di geom_abline()
dati_abline <- data.frame(
  x = 1:10,
  y = 1:10
)
ggplot(data = dati_abline, aes(x = x, y = y)) +
  geom_point() +
  geom_abline(slope = 1, intercept = 0, color = "red") 

# Esempio di geom_hline()
dati_hline <- data.frame(
  x = 1:10,
  y = 1:10
)
ggplot(data = dati_hline, aes(x = x, y = y)) +
  geom_point() +
  geom_hline(yintercept = 5, color = "blue")

# Esempio di geom_vline()
dati_vline <- data.frame(
  x = 1:10,
  y = 1:10
)
ggplot(data = dati_vline, aes(x = x, y = y)) +
  geom_point() +
  geom_vline(xintercept = 5, color = "green")

ggplot(data = dati_vline, aes(x = x, y = y)) +
  geom_point() +
  geom_vline(xintercept = 5, color = "green") +
  geom_hline(yintercept = 3, color = "blue") + 
  geom_abline(slope = 1, intercept = 0, color = "red") 














