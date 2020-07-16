public class Factorial {
	public static void main(String[] args) {

	}

	public static int factorialWhileCountDown(int num) {
		int product = 1;

		while (num > 1) {
			product *= num;
			num--;
		}

		return product;
	}

	public static int factorialWhileCOuntUp(int num) {
		int product = 1, count = 1;

		while (count <= num) {
			product *= count;
			count++;
		}

		return product;
	}

	public static int factorialForCountDown(int num) {
		int product = 1;

		for (; num > 1; num--) {
			product *= num;
		}

		return product;
	}

	public static int factorialForCountUp(int num) {
		int product = 1;

		for(int count = 1; count <= num; count++) {
			product *= count;
		}

		return product;
	}

	public static int recursiveFactorial(int num) {
		if (num == 1) {
			return num;
		} else {
			return num * recursiveFactorial(num - 1);
		}
	}
}