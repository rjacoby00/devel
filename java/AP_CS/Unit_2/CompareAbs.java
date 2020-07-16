import java.util.Scanner;

public class CompareAbs {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);

		System.out.print("Enter a number: ");
		double firstNum = Math.abs(Double.parseDouble(input.nextLine()));

		System.out.print("Enter another number: ");
		double secondNum = Math.abs(Double.parseDouble(input.nextLine()));
		
		if (firstNum > secondNum) {
			System.out.println("The first number you entered has a greater magnitude than the second number entered.");
		} else if (secondNum > firstNum) {
			System.out.println("The second number you entered has a greater magnitude than the first number entered.");
		} else if (firstNum == secondNum) {
			System.out.println("The two numbers you entered have the same magnitude.");
		}
	}
}