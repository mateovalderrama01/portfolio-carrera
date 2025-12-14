import random

#generar un numero aleatorio entre 1 a 100
numero_aleatorio = random.randint(1, 100)


#iniciar el bucle para adivinaar el numero
print(" he generado un munero entre 1 y 100. intenta adivinarlo.")


while True:
    #solicitar al usuario que ingre un numero
    intennto = int(input("introduce tu intento: "))
    
    #comparar el numero ingresado con el numero numero_aleatorio
    if intennto < numero_aleatorio:
        print("el numero es mayor. intenta de nuevo.")
    elif intennto > numero_aleatorio:
        print("el numero es menor. intenta de nuevo.")
    else:
        print("!felicidades! has adivinado el numero.")    
        
        break #salir del bicle si el usuario adivina correctamente 
