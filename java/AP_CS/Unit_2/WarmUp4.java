import java.util.Scanner;

public class WarmUp4 {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);

		System.out.print("Enter an integer: ");
		int inputInt = (int)(Double.parseDouble(input.nextLine()));

		if (isEven(inputInt)) { System.out.println(inputInt + " is even."); }
		else { System.out.println(inputInt + " is odd."); }
	}

	public static boolean isEven(int num) {
		return num % 2 == 0;
	}
}