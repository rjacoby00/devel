public class Warmup {
    public static void main(String[] args) {
        int[] arr = {5, 4, -9};
        System.out.println(sumElements(arr));
    }

    public static int sumElements(int[] a) {
        int sum = 0;
        
        for (int i = 0; i < a.length; i++) {
            if (a[i] > 0)
                sum += a[i];
        }

        return sum;
    }
}
