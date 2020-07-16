public class Dice {
	public static void main(String[] args) {
		int rollOne = (int)(6 * Math.random()) + 1;
		int rollTwo = (int)(6 * Math.random()) + 1;

		System.out.println("Roll One: " + rollOne + "\nRoll Two: " + rollTwo + "\nTotal: " + (rollOne + rollTwo));
	}
}