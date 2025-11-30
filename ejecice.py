#Crea un programa que pida al usuario un número entero positivo y luego imprima todos los números enteros desde ese número hasta 0, descendiendo en cada iteración. El programa debe finalizar cuando el contador llegue a 0.


#solicitar al ususario un numero entero positivo
numero = int(input("introduce unnumero entero positivo: "))

#verifica que el numero es positivo
if numero < 0:
    print("el numero deb ser positivo.")

else:
    #imprimir los numeros desde el numero introducido hasat el 0
    while numero >= 0: 
        print(numero)
        numero -= 1