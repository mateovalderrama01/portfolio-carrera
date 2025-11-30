package co.edu.tdea;

import java.util.Scanner;

public class ejercicio2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc= new Scanner(System.in);
		   System.out.println("Ingrese un numero para calcularlo: ");
		   int r= sc.nextInt();
		   
		   
		   
		   int cuadrado = r * r ;
		   
		   int cubo = r * r*r;
		   
		   System.out.println("el cubo de " + r +" es   " + cubo + " y su cuadrado es " + cuadrado);
		   
		   

	}

}
