public class Warmup {
    public static void main(String[] args) {
        String[] a = {"words", "in", "an", "array", "in"};

        System.out.println(timesInArray(a, "in"));
        System.out.println(timesInArray(a, "test"));
    }

    public static int timesInArray(String[] a, String key) {
        int sum = 0;
        for(int i = 0; i < a.length; i++) if(a[i].equals(key)) sum++;
        return sum;
    }
}