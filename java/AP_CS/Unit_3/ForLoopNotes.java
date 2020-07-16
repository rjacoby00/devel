public class ForLoopNotes {
    public static void main(String[] args) {
        multTable(10);
        System.out.println();
        multTable(12);
        System.out.println();
        multTable(1000);
    }

    public static void multTable(int n) {
        for (int i = 1; i <= n; i++) {
            for (int j = 1; j <= n; j++) {
                System.out.print(i * j + "\t");
            }
            System.out.println();
        }
    }
}