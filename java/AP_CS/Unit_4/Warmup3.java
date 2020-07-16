public class Warmup3 {
    public static void main(String[] args) {
        printNums(5, 4);
        printNums(9, 15);
    }

    public static void printNums(int value, int numRounds) {
        for (int i = 0; i < numRounds; i++) {
            int output = -1;
            while(output != value) {
                output = (int)(Math.random()*10);
                System.out.print(output);
            }
            System.out.println();
        }
    }
}