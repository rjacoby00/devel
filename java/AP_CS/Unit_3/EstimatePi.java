public class EstimatePi {
    public static void main(String[] args) {
        System.out.println("Math.PI = " + Math.PI);

        System.out.println("Estimating pi using 1,000,000 terms: " + estimatePI(1000000));

        for (int i = 100; i <= 1000; i += 100) {
            System.out.println("\nUsing " + i + " terms of our estimating formula");
            System.out.println("Differece between PI and our estimate: " + Math.abs(Math.PI - estimatePI(i)));
        }

    }

    public static double estimatePI(int n) {
        double count = 0;

        for (int i = 0; i < n; i++) {
            if (i % 2 == 0) {
                count += 1.0 / (2 * i + 1);
            } else {
                count -= 1.0 / (2 * i + 1);
            }
        }

        return 4 * count;
    }
}