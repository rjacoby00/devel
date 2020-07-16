public class FactorialProject {
    public static void main(String[] args) {
        System.out.println(factorial(3));
        System.out.println(factorial(4));
        System.out.println(factorial(5));
    }

    public static int factorial(int x) {
        int sum = 1;
        for (int count = x; count > 0; count--) {
            sum *= count;
        }
        return sum;
    }
}