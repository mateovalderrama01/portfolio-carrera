package co.edu.tdea;

import java.util.Scanner;

public class ejercicio8 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
double celcius,farenheit;
		
		Scanner sc= new Scanner(System.in);
		   System.out.println("Ingrese los grados celsius: ");
		    celcius = sc.nextDouble();

		   
		    
		  farenheit = celcius * 1.82 +32;
		
		   
		   System.out.println(celcius + " Es lo mismo que :  " + farenheit + " Farenheit");
		

	}

}
