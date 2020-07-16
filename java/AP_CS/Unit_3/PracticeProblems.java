public class PracticeProblems {
    public static void main(String[] args) {
        boxPictureA(7);
        boxPictureB(7);
        boxPictureC(7);
        boxPictureD(7);
        boxPictureE(7);

        trianglularPatternA(8);
        trianglularPatternA(11);
        trianglularPatternB(5);
        trianglularPatternB(12);
        trianglularPatternC(5);
        trianglularPatternC(9);
        trianglularPatternD(3);
        trianglularPatternD(10);

    }

    public static void boxPictureA(int n) {
        for (int row = 0; row < n; row++) {
            for (int col = 0; col < n; col++) {
                if (row == 0 || col == 0 || row == (n - 1) || col == (n - 1)) 
                    System.out.print("* ");
                
                else
                    System.out.print("  ");

            }
            System.out.println();

        }
    }

    public static void boxPictureB(int n) {
        for (int row = 0; row < n; row++) {
            for (int col = 0; col < n; col++) {
                if (row == 0 || row == (n - 1) || row == col) 
                    System.out.print("* ");
                
                else
                    System.out.print("  ");

            }
            System.out.println();

        }
    }

    public static void boxPictureC(int n) {
        for (int row = 0; row < n; row++) {
            for (int col = 0; col < n; col++) {
                if (row == 0 || row == (n - 1) || row == (n - col - 1)) 
                    System.out.print("* ");
                
                else
                    System.out.print("  ");

            }
            System.out.println();

        }
    }

    public static void boxPictureD(int n) {
        for (int row = 0; row < n; row++) {
            for (int col = 0; col < n; col++) {
                if (row == 0 || row == (n - 1) || row == col || row == (n - col - 1)) 
                    System.out.print("* ");
                
                else
                    System.out.print("  ");

            }
            System.out.println();

        }
    }

    public static void boxPictureE(int n) {
        for (int row = 0; row < n; row++) {
            for (int col = 0; col < n; col++) {
                if (row == 0 || row == (n - 1) || col == 0 || col == (n - 1) || row == col || row == (n - col - 1)) 
                    System.out.print("* ");
                
                else
                    System.out.print("  ");

            }
            System.out.println();

        }
    }

    public static void trianglularPatternA(int n) {
        for (int row = 0; row <= n; row++) {
            for (int col = 0; col <= row; col++) {
                System.out.print("* ");

            }
            System.out.println();

        }
    }

    public static void trianglularPatternB(int n) {
        for (int row = 0; row <= n; row++) {
            for (int col = 0; col <= (n - row); col++) {
                System.out.print("* ");

            }
            System.out.println();

        }
    }

    public static void trianglularPatternC(int n) {
        for (int row = 0; row < n; row++) {
            for (int col = 0; col < n; col++) {
                if (row <= col)
                    System.out.print("* ");

                else
                    System.out.print("  ");

            }
            System.out.println();

        }
    }

    public static void trianglularPatternD(int n) {
        for (int row = 0; row < n; row++) {
            for (int col = 0; col < n; col++) {
                if (col >= (n - row - 1))
                    System.out.print("* ");

                else
                    System.out.print("  ");

            }
            System.out.println();

        }
    }
}