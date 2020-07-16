import java.util.Scanner;

public class ScannerMath {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);

		System.out.print("Enter X value: ");
		int x = Integer.parseInt(input.nextLine());
		System.out.print("Enter Y value: ");
		int y = Integer.parseInt(input.nextLine());

		System.out.println("x = " + x);
		System.out.println("y = " + y);
		System.out.println("x + y = " + (x + y));
		System.out.println("x - y = " + (x - y));
		System.out.println("x * y = " + (x * y));
		System.out.println("x / y = " + (1.0 * x / y));
		System.out.println("x % y = " + (x % y));
		
	}
}