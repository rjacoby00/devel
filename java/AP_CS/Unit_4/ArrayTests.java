public class ArrayTests {
    public static void main(String[] args) {
        System.out.println(snakeEyes());
        int[] nums = {-5, 7, 12, -22, 53, 100, -1, 20};
        int[] a = {2, 4, 6, 8, 10, 12};

        nums = scalar(nums, 2);
        printArray(nums);

        System.out.println(checkDivis(nums, 5));
        System.out.println(checkDivis(a, 2));
    }

    public static int snakeEyes() {
        int d1 = 0, d2 = 0, count = 0;
        while (d1 + d2 != 2) {
            d1 = (int)(Math.random()*6) + 1;
            d2 = (int)(Math.random()*6) + 1;
            count++;
        }
        return count;
    }

    public static int[] scalar(int[] a, int n) {
        int nums[] = new int[a.length];
        for (int i = 0; i < a.length; i++) {
            nums[i] = a[i] * n;
        }
        return nums;
    }

    public static boolean checkDivis(int[] a, int n) {
        for (int i = 0; i < a.length; i++) 
            if (a[i] % n != 0)
                return false;
        return true;
    }

    public static void printArray(int[] a) {
        for (int i = 0; i < a.length; i++) {
            System.out.print(a[i] + " ");
        }

        System.out.println();
    }
}