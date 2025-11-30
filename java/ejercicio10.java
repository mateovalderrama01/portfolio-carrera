package co.edu.tdea;

import java.util.Scanner;

public class ejercicio10 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
double valor,iva,total;
int  vecesproducto;

 iva = 1.21;
		
		Scanner sc= new Scanner(System.in);
		   System.out.println("Ingrese el valor del producto: ");
		    valor = sc.nextDouble();
		    
		    System.out.println("Ingrese veces del producto: ");
		   vecesproducto = sc.nextInt();
		   
		   total= valor * 1.21 * vecesproducto;
		    
		   
		    
		  
		
		   
		   System.out.println("registraste:  " + vecesproducto + " de un mismo producto y el total con el iva incluido es de: " + total);
		

	}

}
