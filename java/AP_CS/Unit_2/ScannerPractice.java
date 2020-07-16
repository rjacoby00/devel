import java.util.Scanner;

public class ScannerPractice {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		
		System.out.print("Please enter and integer ");
		int num = (int)(Double.parseDouble(input.nextLine()));
		System.out.println("You entered: " + num);

		System.out.print("Please enter a double ");
		double num2 = Double.parseDouble(input.nextLine());
		System.out.println("You entered: " + num);

		System.out.print("Please enter your name ");
		String name = input.nextLine();
		System.out.println("Hello, " + name);

		System.out.print("Please enter your full name: ");
		String altName = input.next();
		System.out.println("Your first name is: " + altName);
	}
}