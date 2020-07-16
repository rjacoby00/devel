// ************************************************
//   BaseConvert.java
//
//   Converts base 10 numbers to another base
//   (at most 4 digits in the other base).  The
//   base 10 number and the base are input.
// ************************************************
import java.util.Scanner;
 
public class BaseConvert {

	public static void main (String[] args) {
	
		int base;            // the new base
		int baseTenNum;   // the number in base 10
		int maxNumber;   // the maximum number that will fit
		       			    // in 4 digits in the new base
		       			    
		int[] places = new int[4];
		
		int quotient = 0;
		
		Scanner keyboard = new Scanner(System.in);
		String baseBNum = new String (""); // the number in the new base
		
		// read in the base 10 number and the base
		System.out.println();
		System.out.println ("Base Conversion Program");
		System.out.println();
		System.out.print ("Please enter a base (2 - 9): ");
		base = keyboard.nextInt();
		
		// Compute the maximum base 10 number that will fit in 4 digits
		// in the new base and tell the user what range the number they
		// want to convert must be in
		
		System.out.print ("Please enter a base 10 number to convert: ");
		baseTenNum = keyboard.nextInt();
		quotient = baseTenNum;
		
		for(int i = 0;  i < 4; i++) {
			places[i] = quotient % base;
			quotient = quotient / base;
		}

		for (int i = 3; i >= 0; i--) {
			baseBNum += places[i];
		}
		
		System.out.println();
		System.out.println(baseBNum + " is " + baseTenNum + " in base " + base); // Print the result (see notes in lab)
		
	}
}
