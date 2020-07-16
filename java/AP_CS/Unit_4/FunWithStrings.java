public class FunWithStrings {

    public static void main(String[] args) {

        System.out.println(addString("This", "That"));
        System.out.println(addString("One", "Two", "Three"));
        System.out.println(addString("Here", "Or", "There"));
        System.out.println(addString("Not", "Now"));
    }

    /**
     *
     * @param s1 first string to add
     * @param s2 second string to add
     * @return return s1 and s2 added together
     */
    public static String addString(String s1, String s2) {

        return s1 + " " + s2;
    }

    /**
     *
     * @param s1 first string to add
     * @param s2 second string to add
     * @param s3 third string to add
     * @return return s1, s2, and s3 added together
     */
    public static String addString(String s1, String s2, String s3) {

        return s1 + " " + s2 + " " + s3;
    }
}

