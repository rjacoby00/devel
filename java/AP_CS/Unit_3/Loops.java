public class Loops {
    public static void main(String[] args) {
        cross(5);
    }

    public static void cross(int n) {
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                if (i == j || j == (n - i - 1)) {
                    System.out.print("|");

                } else {
                    System.out.print("X");

                }

            }
            System.out.println();

        }
    }
}