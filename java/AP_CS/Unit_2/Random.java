public class Random {
	public static void main(String[] args) {
		int x = (int)(10.0 * Math.random()) + 1;
		int y = (int)(10.0 * Math.random()) + 1;

		System.out.println("x = " + x);
		System.out.println("y = " + y);
		System.out.println("x + y = " + (x + y));
		System.out.println("x - y = " + (x - y));
		System.out.println("x * y = " + (x * y));
		System.out.println("x / y = " + (1.0 * x / y));
		System.out.println("x % y = " + (x % y));
		
	}
}