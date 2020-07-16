public class SumDigitsProject {
    public static void main(String[] args) {
        System.out.println(sumDigits(151));
        System.out.println(sumDigits(2768));
    }

    public static int sumDigits(int digits) {
        int count = 0;

        for (; digits != 0; digits /= 10) {
            count += (digits % 10);
        }

        return count;
    }
}