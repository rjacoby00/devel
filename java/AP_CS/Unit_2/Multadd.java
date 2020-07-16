public class Multadd {
	public static void main(String[] args) {
		final double PI = Math.PI;
		
		System.out.println(multadd(1, 2, 3));
		System.out.println(multadd(0.5, Math.cos( PI / 4), Math.sin( PI / 4 )));
		System.out.println(multadd(2, Math.log(10) / Math.log(10), Math.log(2) / Math.log(10)));
		
	}

	public static double multadd(double a, double b, double c) {
		return a * b + c;
	}

	public static double expSum(double x) {
		return multadd(x, Math.exp(-1 * x), Math.sqrt(1 - Math.exp(-1 * x)));
	}
}