# matriz solo tiene un tipo de dato

vec_1 <- c(1:9)
vec_2 <- letters[1:9]

vec_1
vec_2

mat_1 <- matrix(vec_1, ncol = 3)
mat_1
class(mat_1)

df_1 <- data.frame(cbind(vec_1, vec_2))
df_1


######### CREACIÓN Y CARGA DE DATOS #############
# Verificar en qué dirección estamos
getwd()

# Observar qué archivos y directorios hay disponibles
list.files()

# Vamos a generar un archivo dentro de algún directorio
new_base <- c(1:99)
new_mt <- matrix(sample(new_base, 30, replace = T),
                 ncol = 3,
                 nrow = 10,
                 byrow = T)
write.csv(new_mt, "Codigo/nueva_mt.csv")

# Cargamos el archvio que acabamos de crear
new_base_loaded <- read.csv("Codigo/nueva_mt.csv")

# Datos básicos de nuestro objeto
str(new_base_loaded)
head(new_base_loaded)
dim(new_base_loaded)
summary(new_base_loaded)
class(new_base_loaded)

# Creamos otro objeto para manipular
estudiantes <- data.frame(
  Nombre = c("Ana", "Luis", "Sofía", "Pedro", "Carla",
             "Miguel", "Elena", "José", "Laura", "Diego", "Juan"),
  Edad = c(21, 19, 22, 20, 18,
           23, 21, 20, 19, 22, 17),
  Carrera = c("Biología", "Medicina", "Química", "Física", "Biología",
              "Química", "Medicina", "Física", "Biología", "Química", "Biología"),
  Promedio = c(9.2, 8.5, 9.8, 6.1, 7.4,
               5.8, 9.5, 6.7, 8.9, 4.9, 6.0))

estudiantes

# Guardamos nuestro objeto
write.csv(estudiantes, "Codigo/estudiantes.csv", row.names = F)

# Lo volvemos a cargar
estudiantes <- read.csv("Codigo/estudiantes.csv")

######### MANUPULACIÓN Y SELECCIÓN #############
# ¿Cómo se lee?
# Recuerda que se leen como las coordenadas, es decir, x (renglones) por y (columnas)

# Selección de datos específicos
estudiantes[1,4]         # Se ve el promedio
estudiantes[1,1]         # Se ve el nombre del estudiante
estudiantes[1,2]         # Se ve la edad
estudiantes[1,3]         # Se ve la materia

rownames(estudiantes) <- estudiantes$Nombre
estudiantes[,"Nombre"]   # Selección de una columna entera
estudiantes["Luis",]     # Selección de un renglón por medio de nombre
estudiantes[1, ]         # Selección de un renglón

# Ejercicio: Imprime toda la información de los primeros 3 renglones


# Ejercicio: Imprime la información de las columnas Carrera y Promedio


# Recorrer un data frame
for(i in estudiantes[,"Promedio"]){  # Recorremos los valores de UNA sola columna
  print(i)
}

for(i in 1:length(estudiantes[,1])){
  print(estudiantes[i,1])
}

for(i in estudiantes["Ana",]){  # Recorremos los valores en UN solo renglón
  print(i)
}

for(i in estudiantes){      # Recorremos las columnas y sus valores
  print(i)
}

# Recuerda que al usar ciclos, podemos usar condicionales
for(i in estudiantes[,"Promedio"]){
  if(i < 6){
    print("Está reprobad@")
  }else{
    print("Está aprobad@")
  }
}

# Ejercicio: Imprime el nombre de los alumnos mayores a 20 años y su respectiva carrera
new_mat <- []
for(i in estudiantes[,"Edad"]){
  if(20 < i){
    new_mat <- rbind(new_mat,estudiantes[which(estudiantes$Edad == i),c(1,3)])
  }
}


# Ejercicio: Genera una tabla de datos únicamente con los estudiantes de Biología

# Modificar datos en tablas
estudiantes

estudiantes[1,1] <- "Ana María"     # Cambiamos el nombre de "Ana" a "Ana María"
estudiantes

estudiantes$Nombre[1] <- "Roberta"  # Cambiamos el nombre con un método similar
estudiantes

# Ejercicio: Cambia las calificaiones menores a 6 a "reprobado", y aquellos iguales o mayores a 6 como "aprobado"

# Ejercicio: Agrega una columna llamada "Beca" en la que los alumnos con un promedio mayor o igual a 9.5 tengan "sí", 
# y el resto "no"