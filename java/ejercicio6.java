package co.edu.tdea;

import java.util.Scanner;

public class ejercicio6 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
double a,b, c;
		
		Scanner sc= new Scanner(System.in);
		   System.out.println("Ingrese la longitud del cateto a: ");
		    a = sc.nextDouble();
		    
		    System.out.println("Ingrese la longitud del cateto b: ");
		    b = sc.nextDouble();
		    
		   
		    
		  c = Math.sqrt(Math.pow(a,2) + Math.pow(b,2));
		
		   
		   System.out.println("La hipotenusa del triangulo es de:  " + c);

	}

}
