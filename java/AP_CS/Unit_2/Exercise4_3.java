public class Exercise4_3 {
	public static void main(String[] args) {
		printAmerican("Sepember", "Thursday", 5, 2019);
		printEuropean("Sepember", "Thursday", 5, 2019);
	}

	public static void printAmerican(String month, String day, int date, int year) {
		System.out.println(day + ", " + month + " " + date + ", " + year);
	}

	public static void printEuropean(String month, String day, int date, int year) {
		System.out.println(date + " " + month + ", " + year);
	}
}