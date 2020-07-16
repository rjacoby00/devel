import java.util.Scanner;

public class QuadraticFormula {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);

		double a, b, c;

		System.out.println("Welcome to the Quadratic Equation solver!  Using ax^2+bx+c,");
		System.out.print("Enter a: ");
		a = Double.parseDouble(input.nextLine());
		System.out.print("Enter b: ");
		b = Double.parseDouble(input.nextLine());
		System.out.print("Enter c: ");
		c = Double.parseDouble(input.nextLine());

		System.out.println(quadraticFormula(a, b, c));
	}

	public static String quadraticFormula(double a, double b, double c) {
		if (a== 0) {
			return "a must not be zero!";
		}

		double descriminant = b * b - (4 * a * c);
		double solutionOne, solutionTwo;
		String solutions;
		
		if (descriminant < 0) {
			return "No real solutions!";
		} else if (descriminant == 0) {
			solutionOne =  (-1 * b + 0) / (2 * a);
			solutions = "x=" + solutionOne;
		} else {
			solutionOne = (-1 * b + Math.sqrt(descriminant)) / (2 * a);
			solutionTwo = (-1 * b - Math.sqrt(descriminant)) / (2 * a);
			solutions = "x=" + solutionOne + "," + solutionTwo;
		}
		
		return solutions;
	}
}