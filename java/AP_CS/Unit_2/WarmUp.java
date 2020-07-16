import java.util.Scanner;

public class WarmUp {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);

		System.out.print("Input a number: ");
		int num = (int)(Double.parseDouble(input.nextLine()));

		int randNum = (int)(10 * Math.random());

		System.out.println("Your number multiplied by " +randNum + " is: " + (randNum * num));
	}
}