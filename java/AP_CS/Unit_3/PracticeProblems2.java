public class PracticeProblems2 {
    public static void main(String[] args) {
        System.out.println(numberOfLeapYears(2000, 2020));
        System.out.println(numberOfLeapYears(2001, 2003));
        System.out.println(numberOfLeapYears(2001, 2004));

        numberPatternA(8);
        System.out.println();
        numberPatternB(8);
        System.out.println();
        numberPatternC(8);
        System.out.println();
        numberPatternD(8);

        System.out.println(reverseString("Test"));
        System.out.println(isPalendrome("Test"));
        System.out.println(isPalendrome("tacocat"));
    }

    public static String reverseString(String input) {
        String tmp = "";
        for (int i = 0; i < input.length(); i++) {
            tmp += input.substring(input.length() - i - 1, input.length() - i);
        }

        return tmp;
    }

    public static boolean isPalendrome(String input) {
        return input.equals(reverseString(input));
    }

    public static void numberPatternA(int n) {
        for (int row = 0; row < n; row++) {
            for (int col = 0; col <= row; col++)
                System.out.print(col + 1 + " ");
            System.out.println();
        }
    }

    public static void numberPatternB(int n) {
        for (int row = 0; row < n; row++) {
            for (int col = 0; col < n; col++) {
                if (row <= col)
                    System.out.print(col + 1 + " ");

                else
                    System.out.print("  ");

            }
            System.out.println();

        }
    }

    public static void numberPatternC(int n) {
        for (int row = 0; row < n; row++) {
            for (int col = 0; col < n; col++) {
                if (col >= (n - row - 1))
                    System.out.print(n - col + " ");

                else
                    System.out.print("  ");

            }
            System.out.println();

        }
    }

    public static void numberPatternD(int n) {
        for (int row = 0; row < n; row++) {
            for (int col = 0; col < (n - row); col++) {
                System.out.print(n - col + " ");

            }
            System.out.println();

        }
    }

    public static int numberOfLeapYears(int start, int end) {
        int count = 0;
        for (int i = start; i <= end; i++)
            if (isLeapYear(i))
                count++;
        return count;
    }

    public static boolean isLeapYear(int year) {
        return ((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0));
    }
}