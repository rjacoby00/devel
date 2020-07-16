public class PrintWhile {
	public static void main(String[] args) {
		printWhile(5, 13);
	}

	public static void printWhile (int min, int max) {
		for (int i = min; i <= max; i++) {
			System.out.println(i);
		}
	}
}