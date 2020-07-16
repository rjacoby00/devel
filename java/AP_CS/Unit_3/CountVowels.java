public class CountVowels {
    public static void main(String[] args) {
        System.out.println(countVowels("Hello, World!"));
        System.out.println(countVowels("TEST"));
    }

    public static int countVowels(String searchString) {
        int sum = 0;
        sum += characterCounter(searchString, "a");
        sum += characterCounter(searchString, "e");
        sum += characterCounter(searchString, "i");
        sum += characterCounter(searchString, "o");
        sum += characterCounter(searchString, "u");
        sum += characterCounter(searchString, "A");
        sum += characterCounter(searchString, "E");
        sum += characterCounter(searchString, "I");
        sum += characterCounter(searchString, "O");
        sum += characterCounter(searchString, "U");
        return sum;
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
}