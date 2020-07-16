public class SumDigits {
    public static void main(String[] args) {
        System.out.println(sumDigits(151));
        System.out.println(countDigits(151));

        System.out.println(sumDigits(2768));
        System.out.println(countDigits(2768));
    }

    public static int countDigits(int n) {
        int sum = 0;
        while (n != 0) {
            sum++;
            n /= 10;
        }
        return sum;
    }

    public static int sumDigits(int n) {
        int sum = 0;
        while (n != 0) {
            sum += n % 10;
            n /= 10;
        }
        return sum;
    }
}