public class Project11 {
    public static void main(String[] args) {
        String[] a = {"Javelin", "rocks", "bisks", "alphabet"};
        String[] b = {"Javelin", "rocks", "at", "alphabet"};
        int[] c = {-5, 7, 12, -22, 53, 100, -1, 20};

        System.out.println(stringThing(a));
        System.out.println(stringThing(b));
        System.out.println(findLargest(c));
        System.out.println(findSmallest(c));
    }

    public static String stringThing(String[] s) {
        String out = "";
        for (int i = 0; i < s.length; i++) {
            if (s[i].length() > i) 
                out += s[i].substring(i, i + 1);
            else
                out += "Z";
        }
        return out;
    }

    public static int findLargest(int[] a) {
        int largest = Integer.MIN_VALUE;

        for (int i = 0; i < a.length; i++)
            if (a[i] > largest)
                largest = a[i];
        
        return largest;
    }

    public static int findSmallest(int[] a) {
        int smallest = Integer.MAX_VALUE;

        for (int i = 0; i < a.length; i++)
            if (a[i] < smallest)
                smallest = a[i];
        
        return smallest;
    }
}