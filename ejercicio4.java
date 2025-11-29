package co.edu.tdea;

import java.util.Scanner;

public class ejercicio4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		float area,base,altura;
		
		Scanner sc= new Scanner(System.in);
		   System.out.println("Ingrese la altura del triangulo: ");
		    altura = sc.nextFloat();
		    
		    System.out.println("Ingrese la base del triangulo: ");
		    base = sc.nextFloat();
		    
		    area = base * altura / 2;
		    
		   
		
		   
		   System.out.println("El area del triangulo es:  " + area);
		   

	}

}
