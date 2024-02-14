nuevo_dir = "C:/Aplicaciones_Informáticas"
setwd(nuevo_dir)

#1
vector_x = c(1,2,3,4,5)
vector_y = c(9.1,2.4,7.5,1.3,3.4)
#Un vector es un grupo de datos homogéneo
#La diferencia con una lista es que el vector solo puede incluir un único tipo de datos, la lista puede incluir varios
#Ambos vectores tienen una longitud de 5 campos
#Double significa que el valor se guarda de forma doble como decimales, e integer se guarda como un número entero
#El vector con datos decimales/double ocupa más espacio que uno con números enteros/integer

#2
vector_x+vector_y
vector_x-vector_y
vector_x*vector_y
vector_x/vector_y
vector_x^vector_y

#3
vector_y^2

#4
vector_y*10

#5
vector_y+25

#6
max(vector_y)

#7
min(vector_y)

#8
abs(9.1)

#9
sqrt(vector_y)

#10
sum(vector_y)

#11
list = list(c(vector_x,vector_y))
View(list)
typeof(list)
str(list)
#la longitud es 10
#utiliza el valor double
#porque se está coercionando a los valores de x a los de y, es decir, de decimales a enteros, en caso contrario, se perderían los valores decimales

#12
is.na(list)

#13
z = c(29,NA,12,46,73)
is.na(z)

#14
mean(z)
#el valor que arroja es NA, porque hay dos tipos de datos distintos, y no se puede hacer la media
mean(z, na.rm = TRUE)

#15
matriz = matrix(c(24,69,3,90,23,56,1,63,87,21,77,19),
                nrow = 4, ncol = 3,
                byrow = F)
#Los valores se rellenan por columna, que es como se ordenan por defecto.

#16
matriz_filas = matrix(c(1:12),
                        nrow = 4, ncol = 3,
                        byrow = T)

#17
a = matrix(c(1:9),
           nrow = 3, ncol = 3,
           )
b = matrix(c(10:18),
           nrow = 3, ncol = 3,
           )

#18
suma_matriz = a+b
resta_matriz = a-b
#Todos los valores son -9 porque 

#19
t(matriz)

#20
matriz*5

#21
matriz_mult = a*b

#22
matriz_mult[2,3]
matriz_mult[2]
matriz_mult[3]


#practicaEstDescriptivaR
#1
set.seed(200)
num_cuentas = round(rnorm(100,mean = 50, sd = 10))

#2
mean(num_cuentas)

#3
median(num_cuentas)

#4
mode <- function(x) {
  return(as.numeric(names(which.max(table(x)))))
}
mode(num_cuentas)

#5
range(num_cuentas)

#6
quantile(num_cuentas, length = 100)
primer_cuartil = "44.75%"

#7
percentil_75 = "55.00%"

#8
var(num_cuentas)

#9
sd(num_cuentas)

#10
hist(num_cuentas, main = "Frecuencia de cuentas por yacimiento",
     xlab = "Número de cuentas", ylab = "Frecuencia",
     col = "khaki1")

#11
boxplot(num_cuentas, main = "Frecuencia de cuentas por yacimiento",
     xlab = "Número de cuentas", ylab = "Densidad")

#12
densidad <- density(num_cuentas)
lines(densidad, lwd = 2, col = "blue1")
plot(densidad, lwd = 2, col = "blue",
     main = "Densidad")

#13
barplot(num_cuentas, main = "Cuentas por yacimientos",
        col = "khaki1")

#14
set.seed(123)
tipo_artefacto <- c("Cuenco","Lámina","Punta de flecha")
material <- c("Cerámica","Lítica","Metal")
periodo_cultural <- c("Neolítico","Romano","Medieval")
estado_conservación <- c("Deteriorado","Prácticamente desaparecido","Buen estado")
ubicación <- c("Valencina","Montelirio","Chinflón")

tipo_artefacto <- sample(tipo_artefacto, 10, replace = TRUE)
material <- sample(material, 10, replace = TRUE)
periodo_cultural <- sample(periodo_cultural, 10, replace = TRUE)
estado_conservación <- sample(estado_conservación, 10, replace = TRUE)
ubicación <- sample(ubicación, 10, replace = TRUE)

tabla_freq_tip_art <- table(tipo_artefacto)
tabla_freq_mat <- table(material)
tabla_freq_per_cul <- table(periodo_cultural)
tabla_freq_est_con <- table(estado_conservación)
tabla_freq_ubi <- table(ubicación)
