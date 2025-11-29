/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package javaapplication3;

import java.util.Scanner; 


public class JavaApplication3 {

    public static void main(String[] args) {
        // Llamamos al método para ejecutar el código que calcula el área
        calcularAreaTriangulo();
    }

    // Método que contiene el código para calcular el área del triángulo
    public static void calcularAreaTriangulo() {
        // Crear un objeto Scanner para leer entradas
        Scanner scanner = new Scanner(System.in);

        // Leer los tres lados del triángulo
        System.out.print("Introduce el primer lado (a): ");
        double a = scanner.nextDouble();
        System.out.print("Introduce el segundo lado (b): ");
        double b = scanner.nextDouble();
        System.out.print("Introduce el tercer lado (c): ");
        double c = scanner.nextDouble();

        // Calcular el semiperímetro
        double s = (a + b + c) / 2;

        // Calcular el área utilizando la fórmula de Herón
        double area = Math.sqrt(s * (s - a) * (s - b) * (s - c));

        // Mostrar el resultado
        System.out.println("El área del triángulo es: " + area);

        // Cerrar el scanner
        scanner.close();
    }
}
