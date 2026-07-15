fibonacci <- function(num){
  num_empieza <- c(0,1)                  # Vector inicial con los dos primeros digitos
  if(num == 1){                          # Condicional en caso que nos pidan solo el primer digito
    print(num_empieza[1])                # Solo se imprime el 0 del vector
  }
  else if(num == 2){                     # Condicional cuando nos piden los primeros dos ...
    print(num_empieza)                   # imprimir el vector
  }else{                                 # En caso que quieran más que los primeros dos digitos
    nueva_sum <- num_empieza             # asignamos a una nueva variable
    for(i in 3:num){                     # Vueltas hasta el digito que nos mencionen
      nueva_sum <- append(nueva_sum,(nueva_sum[i-1] + nueva_sum[i-2]))   # Sumamos el último con el penúltimo y lo agregamos al vectopr
    }
    print(nueva_sum)                     # imprimo el vector
  }
}

fibonacci(7)




vec <- c(1,2,3,4)