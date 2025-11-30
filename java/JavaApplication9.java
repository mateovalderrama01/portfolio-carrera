/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */ 
package javaapplication9;

import java.util.Scanner; // Importar Scanner

public class JavaApplication9 { // Clase principal
    public static void main(String[] args) {
        // Crear un objeto Scanner para leer las entradas
        Scanner scanner = new Scanner(System.in);

        // Solicitar los datos de entrada
        System.out.print("Introduce el nombre del trabajador: ");
        String nombre = scanner.nextLine(); // Guardar el nombre

        System.out.print("Introduce el número de horas trabajadas: ");
        double horasTrabajadas = scanner.nextDouble();

        System.out.print("Introduce el valor de la hora trabajada: ");
        double valorHora = scanner.nextDouble();

        System.out.print("Introduce el número de hijos: ");
        int numHijos = scanner.nextInt();

        // Cálculos
        double salarioBruto = horasTrabajadas * valorHora;
        double descuentoAhorro = salarioBruto * 0.15; // 15% de descuento por ahorro
        double descuentoSeguridadSocial = salarioBruto * 0.07; // 7% de descuento por seguridad social
        double subsidio = numHijos * 45000; // Subsidio por hijo
        double salarioNeto = salarioBruto - descuentoAhorro - descuentoSeguridadSocial + subsidio;

        // Imprimir los resultados
        System.out.println("\n--- Resumen del salario ---");
        System.out.println("Nombre del trabajador: " + nombre);
        System.out.println("Salario bruto: $" + salarioBruto);
        System.out.println("Descuento por ahorro (15%): $" + descuentoAhorro);
        System.out.println("Descuento por seguridad social (7%): $" + descuentoSeguridadSocial);
        System.out.println("Subsidio por hijos: $" + subsidio);
        System.out.println("Salario neto: $" + salarioNeto);

        // Cerrar el scanner
        scanner.close();
    }
}
