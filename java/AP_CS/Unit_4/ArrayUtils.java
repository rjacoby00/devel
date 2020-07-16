public class ArrayUtils {
	public static void fillWithRandomNumbers(int[] a, int max) {
		for(int i = 0; i < a.length; i++) {
			int sign = 2 * (int)(2 * Math.random()) - 1;

			a[i] = sign * (int)((max + 1) * Math.random());
		}
	}

	public static void print(int[] a) {
		for (int i = 0; i < a.length; i++) {
            System.out.print(a[i] + " ");
        }

        System.out.println();
	}

	public static void print(String[] a) {
		for (int i = 0; i < a.length; i++) {
            System.out.print(a[i] + " ");
        }

        System.out.println();
	}

    /**
     * Multiplies every element in an array by a scalar, num
     * @param array
     * @param num
     * @return array
     */
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

    public static void swap(int[] a, int loc1, int loc2) {
        int tmp = a[loc1];
        a[loc1] = a[loc2];
        a[loc2] = tmp;
	}
	
	public static void bubbleSort(int[] a) {
        for (int i = 0; i < a.length; i++) {
            for (int j = 0; j < a.length - 1 - i; j++) {
                if (a[j] > a[j + 1]) {
                    swap(a, j, j + 1);
                }
            }
        }
    }

    public static boolean sequentialSearch(int[] a, int key) {
        for(Integer i : a) 
            if (i == key)
                return true;
        return false;
    }

    public static int sumElements(int[] a) {
        int sum = 0;
        
        for (int i = 0; i < a.length; i++) {
            if (a[i] > 0)
                sum += a[i];
        }

        return sum;
    }

    public static int findMax(int[] a) {
        int max = Integer.MIN_VALUE;

        for (int i = 0; i < a.length; i++)
            if (a[i] > max)
                max = a[i];
        
        return max;
    }

    public static int findMin(int[] a) {
        int min = Integer.MAX_VALUE;

        for (int i = 0; i < a.length; i++)
            if (a[i] < min)
                min = a[i];
        
        return min;
    }

    public static boolean binSearch(int[] a, int key) {
        int lo = 0, hi = a.length - 1, mid = (lo + hi) / 2;

        while (lo <= hi) {
            if (a[mid] < key)
                lo = mid + 1;
            else if (a[mid] > key)
                hi = mid - 1;
            else return true;

            mid = (lo + hi) / 2;
        }

        return false;
    }
	
}