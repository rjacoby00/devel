public class Tables {
    public static void main(String[] args) {
        tableOfStars(10, 10);
        drawDiagonal(10, 10);
        drawTriangle(10, 10);
    }

    public static void tableOfStars(int rows, int cols) {
        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < cols; col++) {
                System.out.print("*");

            }

            System.out.println();
        }
    }

    public static void drawDiagonal(int rows, int cols) {
        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < cols; col++) {
                if (row == col) {
                    System.out.print("*");

                } else {
                    System.out.print(" ");

                }
            }

            System.out.println();
        }
    }

    public static void drawTriangle(int rows, int cols) {
        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < cols; col++) {
                if (row >= col) {
                    System.out.print("*");
                    
                } else {
                    System.out.print(" ");
                    
                }
            }
            System.out.println();

        }
    }
}