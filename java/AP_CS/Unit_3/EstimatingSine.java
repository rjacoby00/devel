public class EstimatingSine {
    public static void main(String[] args) {
        System.out.println(approximateSin(1, 5));
        System.out.println(approximateSin(5, 5));
        System.out.println(approximateSin(10, 5));
    }

    public static double approximateSin(double x, int n) {
        double count = 0;

        for (int i = 0; i < n; i++) {
            if (i % 2 == 0) {
                count += Math.pow(x, 2 * i + 1) / factorial(2 * i + 1);
            } else {
                count -= Math.pow(x, 2 * i + 1) / factorial(2 * i + 1);
            }
        }

        return count;
    }

    public static int factorial(int num) {
		if (num == 1) {
			return num;
		} else {
			return num * factorial(num - 1);
		}
	}
}