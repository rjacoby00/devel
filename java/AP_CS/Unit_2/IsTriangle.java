public class IsTriangle {
	public static void main(String[] args) {
		System.out.println(isTriangle(1, 1, 1));
		System.out.println(isTriangle(3, 4, 5));
		System.out.println(isTriangle(1, 99, 100));
	}

	public static boolean isTriangle(int a, int b, int c) {
		return a + b > c && a + c > b && b + c > a;
	}
}