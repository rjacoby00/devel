import java.util.Scanner;

public class Compare {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);

		System.out.print("Enter a number: ");
		double firstNum = Double.parseDouble(input.nextLine());

		System.out.print("Enter another number: ");
		double secondNum = Double.parseDouble(input.nextLine());
		
		if (firstNum > secondNum) {
			System.out.println("The first number you entered is bigger than the second number entered.");
		} else if (secondNum > firstNum) {
			System.out.println("The second number you entered is bigger than the first number entered.");
		} else if (firstNum == secondNum) {
			System.out.println("The two numbers you entered are the same.");
		}
	}
}