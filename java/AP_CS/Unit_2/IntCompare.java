import java.util.Scanner;

public class IntCompare {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		
		System.out.print("Enter an integer: ");
		int a = Integer.parseInt(input.nextLine());
		System.out.print("Enter another integer: ");
		int b = Integer.parseInt(input.nextLine());

		System.out.println("The larger number is " + largestInt(a, b));
		
	}

	public static int largestInt(int a, int b) {
		if (a > b) {
			return a;
		} else {
			return b;
		}
	}
}