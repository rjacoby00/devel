public class WarmUp3 {
	public static void main(String[] args) {
		randInt(1, 10);
		randInt(11, 50);
	}

	public static void randInt(int min, int max) {
		int rand = (int)(Math.random()*(max - min + 1)) + min;
		System.out.println(rand);
	}
}