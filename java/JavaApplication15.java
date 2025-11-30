/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package javaapplication15;  // Asegúrate de que esté dentro del paquete correcto

import java.util.Scanner;  // Importar Scanner para leer las entradas del usuario

public class JavaApplication15 {  // Clase principal (que debe coincidir con el nombre del archivo)
    public static void main(String[] args) {
        // Crear un objeto Scanner para leer las entradas
        Scanner scanner = new Scanner(System.in);
        
        // Leer dos variables del usuario
        System.out.print("Introduce el valor de la primera variable: ");
        int a = scanner.nextInt();
        
        System.out.print("Introduce el valor de la segunda variable: ");
        int b = scanner.nextInt();
        
        // Imprimir los valores antes del intercambio
        System.out.println("\nAntes del intercambio:");
        System.out.println("Valor de a: " + a);
        System.out.println("Valor de b: " + b);
        
        // Intercambiar los valores usando una variable temporal
        int temp = a;
        a = b;
        b = temp;
        
        // Imprimir los valores después del intercambio
        System.out.println("\nDespués del intercambio:");
        System.out.println("Valor de a: " + a);
        System.out.println("Valor de b: " + b);
        
        // Cerrar el scanner
        scanner.close();
    }
}

