public class WhileNotesPartTwo {

	public static void main(String[] args) {
		System.out.println(factorial(4));

		countUp(5);
		countDown(6);

		System.out.println(harmonicSeries(5));
		System.out.println(harmonicSeries(10));

		System.out.println(alternatingHarmonicSeries(5));
		System.out.println(alternatingHarmonicSeries(10));
	}

	public static double harmonicSeries(double num){
		double sum = 0.0;
		int count = 1;
		while (count <= num) {
			sum += (1.0 / count);
			count++;
		}
		return sum;
	}

	public static double alternatingHarmonicSeries(double num){
		double sum = 0.0;
		int count = 1;
		while (count <= num) {
			if (count % 2 == 0) {
				sum -= (1.0 / count);
			} else {
				sum += (1.0 / count);
			}
			count++;
		}
		return sum;
	}
	
	public static void countUp(int num) {
		int count = 0;
		
		while (num > count) {
			count++;
			System.out.print(count + " ");
		}
		
		System.out.println("Finsihed!");
	}

	public static void countDown(int num) {
		while (num > 0) {
			System.out.print(num + " ");
			num--;
		}
		System.out.println("Done!");
	}
	
	public static int factorial(int factorial) {
		int count = 1, product = 1;

		while (count <= factorial) {
			product *= count;
			count++;
		}

		
		return product;
	}

	public static int characterCounter(String searchString, String character) {
		int count = 0, sum = 0;
		
		while (count < searchString.length()) {
			if (searchString.substring(count, count + 1).equals(character)) {
				sum++;
			}

			count++;
		}

		return sum;
	}
	
	public static void printTable(int rows, int cols) {
		int row = 0, int col = 0;

		while (row < rows) {
			while (col < cols) {
				System.out.print("%");
				col++;
			}

			System.out.println();
			row++;
			col = 0;
		}
	}

	public static void printBorder(int rows, int cols) {
		int row = 0, col = 0;

		while (row < rows) {
			while (col < cols) {
				if(row == 0 || row == (rows - 1) || col == 0 || col == (cols - 1)) {
					System.out.print("%");
				} else {
					System.out.print(" ");
				}

				col++;

			}

			System.out.println()
			row++;
			col = 0;
		}
	}

}