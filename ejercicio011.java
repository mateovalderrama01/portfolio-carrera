package co.edu.tdea;

import java.util.Scanner;

public class ejercicio011 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
double nota1,nota2, nota3 ;
		
		Scanner sc= new Scanner(System.in);
		   System.out.println("Ingrese la nota del primer parcial: ");
		    nota1 = sc.nextDouble();
		    
		    System.out.println("Ingrese la nota del segundo parcial: ");
		    nota2 = sc.nextDouble();
		    
		    System.out.println("Ingrese la nota del tercer parcial: ");
		    nota3 = sc.nextDouble();
		    
		    
		   
		    
		 double notafin = nota1 * 0.2 + nota2 * 0.2 + nota3 * 0.6;
		   
		   System.out.println("La nota final del estudiante es de:  " + notafin);
		

	}

}
