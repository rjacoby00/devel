public class IsDivisible {
	public static void main(String[] args) {
		System.out.println(isDivisible(6, 3));
		System.out.println(isDivisible(10, 3));
	}

	public static boolean isDivisible(int n, int m) {
		return n % m == 0;
	}
}