public class Palindrome {
    public static void main(String[] args) {
        System.out.println(isPalindrome("tesset"));
        System.out.println(isPalindrome("test"));
        System.out.println(isPalindrome("civic"));
        System.out.println(isPalindrome("kayak"));
        System.out.println(isPalindrome("noon"));
        System.out.println(isPalindrome("racecar"));
    }

    public static boolean isPalindrome(String str) {
        return str.length() <= 1 || str.charAt(0) == str.charAt(str.length() - 1) && isPalindrome(str.substring(1, str.length() - 1));
    }
}