public class Homework {
    public static void main(String[] args) {
        printRange(12, 19);

    }

    public static void printRange(int min, int max) {
        System.out.println("Minimum number: " + min + "\nMaximum number: " + max + "\n");
        
        while (min <= max) {
            System.out.print(min);
            if (min % 6 == 0) 
                System.out.println(" *");
            else if (min % 2 == 0) 
                System.out.println(" <");
            else
                System.out.println();
            min++;
            
        }
    }
}