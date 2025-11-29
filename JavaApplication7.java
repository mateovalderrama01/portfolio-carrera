/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */


package javaapplication7;  

import java.util.Scanner; 

public class JavaApplication7 {

    public static void main(String[] args) {
        // Llamar al método para ejecutar el cálculo del proyectil
        calcularMovimientoProyectil();
    }

    public static void calcularMovimientoProyectil() {
        // Crear un objeto Scanner para leer entradas
        Scanner scanner = new Scanner(System.in);
        
        // Constantes
        final double g = 9.81; // Aceleración debida a la gravedad en m/s²
        
        // Solicitar la velocidad inicial y el ángulo
        System.out.print("Introduce la velocidad inicial (m/s): ");
        double v0 = scanner.nextDouble();
        
        System.out.print("Introduce el ángulo de lanzamiento (grados): ");
        double alpha = scanner.nextDouble();
        
        // Convertir el ángulo a radianes
        double alphaRad = Math.toRadians(alpha);
        
        // Calcular la altura máxima
        double alturaMaxima = (Math.pow(v0, 2) * Math.pow(Math.sin(alphaRad), 2)) / (2 * g);
        
        // Calcular el tiempo de vuelo
        double tiempoVuelo = (2 * v0 * Math.sin(alphaRad)) / g;
        
        // Calcular el alcance máximo
        double alcanceMaximo = (Math.pow(v0, 2) * Math.sin(2 * alphaRad)) / g;
        
        // Mostrar los resultados
        System.out.println("Altura máxima alcanzada: " + alturaMaxima + " metros");
        System.out.println("Tiempo de vuelo: " + tiempoVuelo + " segundos");
        System.out.println("Alcance máximo: " + alcanceMaximo + " metros");
        
        // Cerrar el scanner
        scanner.close();
    }
}