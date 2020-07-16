public class RandomNumber {
	public static void main(String[] args) {
		int min = Integer.MAX_VALUE;
		int max = Integer.MIN_VALUE;
		int repetitions = 1000;
		int randNum;
		int total = 0;
		
		int[] data = new int[repetitions];
		
		for (int i = 0; i < repetitions; i++) {
			randNum = (int)(1000 * Math.random());
			if (randNum > max) { max = randNum; }
			else if (randNum < min) { min = randNum; }
			total += randNum;
			System.out.println(randNum);
			data[i] = i;
			
		}

		System.out.println("Max Number: " + max);
		System.out.println("Min Number: " + min);
		System.out.println("Mean: " + (total / repetitions));
		
	}
}