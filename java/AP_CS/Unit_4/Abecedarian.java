public class Abecedarian {
    public static void main(String[] args) {
        System.out.println(isAbecedarian("dimpsy"));
        System.out.println(isAbecedarian("test"));
        System.out.println(isAbecedarian("aaabbbbcccc"));
    }

    public static boolean isAbecedarian(String str) {
        return isAbecedarian(str, 0);
    } 

    public static boolean isAbecedarian(String str, int index) {
        return (int)(str.charAt(0)) >= index && (str.length() <= 1 || isAbecedarian(str.substring(1), (int)(str.charAt(0))));
    }
}