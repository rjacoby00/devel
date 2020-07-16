public class MixString {
    public static void main(String[] args) {
        System.out.println(stringTimes("hi", 2));
    }

    public static String stringTimes(String str, int n) {
        String ret = "";
        while (n > 0) {
          ret += str;
          n--;
        }
        return ret;
      }
}