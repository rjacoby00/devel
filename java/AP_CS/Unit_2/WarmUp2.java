import java.util.Scanner;

public class WarmUp2 {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);

		System.out.print("Input a string: ");
		String inputString = input.nextLine();

		int stringLenght = inputString.length();
		System.out.println("The string you enterd is " + stringLenght + " characters long.");			
	}
}