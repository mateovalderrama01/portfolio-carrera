#Crea un programa que calcule la serie de Fibonacci hasta un número específico proporcionado por el usuario. La serie de Fibonacci es una secuencia en la que cada número es la suma de los dos números anteriores, comenzando con 0 y 1. El programa debe seguir calculando y mostrando números de la serie hasta que el siguiente número sea mayor que el número ingresado por el usuario.
limite = int(input("introduce un numero limite para la serie de fibonacci: "))

#iniciar los primeros dos numero de la serie fibonacci 
a, b = 0,1

#imprimir los numero de sserie de fibonacci hasta que el siguiente numero sea mayor
print("serie de fibonacci:")
while a <= limite:
    print(a, end = " ")
    a, b = b, a + b
    
print()        
    
