/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */

package javaapplication14; 

import java.util.Scanner;

public class JavaApplication14 {  // Clase principal
    public static void main(String[] args) {
        // Crear un objeto Scanner para leer la entrada del usuario
        Scanner scanner = new Scanner(System.in);
        
        // Solicitar al usuario el valor entero
        System.out.print("Introduce el valor en unidades: ");
        int unidades = scanner.nextInt();
        
        // Calcular el número de docenas y unidades restantes
        int docenas = unidades / 12;  // Dividir el total entre 12 para obtener las docenas
        int unidadesRestantes = unidades % 12;  // Obtener el residuo, que son las unidades restantes
        
        // Mostrar el resultado
        System.out.println(unidades + " = " + docenas + " docenas, " + unidadesRestantes + " unidad(es)");
        
        // Cerrar el scanner
        scanner.close();
    }
}
