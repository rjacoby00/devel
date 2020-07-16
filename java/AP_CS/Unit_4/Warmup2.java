public class Warmup2 {
    public static void main(String[] args) {
        String[] a = {"the", "than", "thanos"};

        System.out.println(strInArray(a, "the"));
        System.out.println(strInArray(a, "th"));
    }

    public static boolean strInArray(String[] a, String key) {
        for (int i = 0; i < a.length; i++)
            if (a[i].indexOf(key) < 0)
                return false;

        return true;
    }

}