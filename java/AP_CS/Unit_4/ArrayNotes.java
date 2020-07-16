public class ArrayNotes {
    public static void main(String[] args) {
        int[] a = {-5, 7, 12, -22, 53, 100, -1, 20};

        int[] b = new int[100000];

        StopWatch sw = new StopWatch();

        ArrayUtils.fillWithRandomNumbers(b, 1_000_000_000);

        sw.start();
        ArrayUtils.bubbleSort(b);
        sw.stop();

        System.out.println(sw.getTimeInMilliseconds());

        // ArrayUtils.print(b);

        sw.start();
        System.out.println(ArrayUtils.binSearch(b, 0));
        sw.stop();

        System.out.println(sw.getTimeInMilliseconds());
    }
}