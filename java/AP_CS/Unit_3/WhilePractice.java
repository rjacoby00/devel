import java.util.Scanner;

public class WhilePractice {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);

		final int SENTINEL = -999;
		int userVal = 0, sum = 0;

		while (userVal != SENTINEL) {
			sum += userVal;
			System.out.print("Enter an integer to be added to the sum(input -999 to quit): ");
			userVal = (int)(Double.parseDouble(input.nextLine()));
		}

		System.out.println("Sum is: " + sum);
	}
}