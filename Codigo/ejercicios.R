# Repaso funciones
name <- function(variables) { # Nombre de función y poner argumentos o variables
                              # Aquí va lo que se ejecuta
}

suma <- function(num1, num2){
  suma_completa <- num1 + num2
  return(suma_completa)
}
suma(1,4)

ciclo_i <- function(vector1){
  for(i in vector1){
    print(i)
  }
}
vec_1 <- c(1:10)
ciclo_i(vec_1)

# Carga la tabla que vamos a usar
data(mtcars)

# Datos generales de nuestra tabla
colnames(mtcars)
dim(mtcars)
str(mtcars)
summary(mtcars)

# Ejemplo de seleccionar datos
mtcars[, "mpg"]

# Indexing de datos con función `which`
# Which selecciona posiciones, no valores. Es decir, dice qué posición cumple con la condición
# Quiero seleccionar renglones que cumplan con condiciones específicas
which(mtcars$cyl == 8)
which(mtcars$hp > 200)
mtcars[which(mtcars$cyl > 6),]        # Solo imprime aquellos con variable cyl > 6
mtcars[which(mtcars$gear == 3),]      # Solo imprime aquellas observaciones con  gear == 3

# Ejercicio: Imprime el "hp" de todas las observaciones con un ciclo for

# Ejercicio: Cuenta cuántos coches tienen un cilindraje de 8 con un ciclo for

# Ejercicio: Genera una función que obtenga el promedio de "hp" de la tabla completa

# Ejercicio: Genera una función que identifique el valor mínimo de peso (wt)

# Preguntemos cosas a los datos