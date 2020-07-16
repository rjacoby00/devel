import java.util.Scanner;

public class TriangleTest {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);

		System.out.print("Enter the length of leg a: ");
		int a = (int)(Double.parseDouble(input.nextLine()));

		System.out.print("Enter the length of leg b: ");
		int b = (int)(Double.parseDouble(input.nextLine()));

		System.out.print("Enter the length of hypotenuse c: ");
		int c = (int)(Double.parseDouble(input.nextLine()));
		
		if (testRightTriangle(a, b, c)) {
			System.out.println("The triangle is a right triangle");
		} else {
			System.out.println("The triangle is not a right triangle");
		}
	}

	public static boolean testRightTriangle (int a, int b, int hypotenuse) {
		double hypotenuseTest = Math.sqrt(a * a + b * b);
		return hypotenuseTest == hypotenuse;
	}
}