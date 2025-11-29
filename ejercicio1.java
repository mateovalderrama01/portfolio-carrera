package co.edu.tdea;

import java.util.Scanner;

public class ejercicio1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		   Scanner sc= new Scanner(System.in);
		   System.out.println("Ingrese el radio de la circunferencia: ");
		   double r= sc.nextDouble();
		   
		   double pi=  3.14 ;
		   
		   double longitud = 2* pi * r;
		   
		   double area = pi * r*r;
		   
		   System.out.println("La longitud de la circunferenci es " + longitud + " y el area es " + area);
		   
		   
		

	}

}
