public class HW {
    public static void main(String[] args) {
        System.out.println(recombine("apple", "pear"));
        System.out.println(recombine("pear", "apple"));

        String[] a = {"apple", "pear", "this", "cat"};

        ArrayUtils.print(mixedWords(a));
    }

    public static String[] mixedWords(String[] words) {
        String output[] = new String[words.length];
        for (int i = 0; i < words.length / 2; i++) {
            output[2 * i] = recombine(words[2 * i], words[2 * i + 1]);
            output[2 * i + 1] = recombine(words[2 * i + 1], words[2 * i]);
        }
        return output;
    }

    public static String recombine(String word1, String word2) {
        return word1.substring(0, word1.length() / 2) + word2.substring(word2.length() / 2, word2.length());
    }
}