import java.util.Scanner;

public class GPA {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);

		System.out.print("Enter your GPA: ");
		if(gpaAnalyze(Double.parseDouble(input.nextLine()))) {
			System.out.println("You will pass");
		} else {
			System.out.println("You will not pass");
		}
	}

	public static boolean gpaAnalyze(double gpa) {
		if (gpa > 3.75) System.out.println("Something witty.");
		else if (gpa > 3) System.out.println("Something droll");
		else if (gpa > 2.5) System.out.println("Something waggish.");
		else System.out.println("Something scintillating");
		return gpa >= 2;
	}
}