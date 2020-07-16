public class SequentialSearch {
    public static void main(String[] args) {
        String[] test1 = {"test,", "not it", "it"};
        String[] test2 = {"a", "b", "c", "d", "e"};

        System.out.println(sequentialSearch(test1, "it"));
        System.out.println(sequentialSearch(test2, "it"));
    }

    public static boolean sequentialSearch(String[] a, String key) {
        for (int i = 0; i < a.length; i++) {
            if (a[i].equals(key))
                return true;
        }
        return false;
    }
}