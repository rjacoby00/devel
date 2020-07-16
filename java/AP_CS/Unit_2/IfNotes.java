import java.util.Scanner;

public class IfNotes {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);

		System.out.print("Enter an integer: ");
		int num = (int)(Double.parseDouble(input.nextLine()));

		if (num > 0) {
			System.out.println("The number you entered is positive.");
		} else if (num < 0) {
			System.out.println("The number you entered is negative.");
		} else {
			System.out.println("The number you entered is zero.");
		}
	}
}