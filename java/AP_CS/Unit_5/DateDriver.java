public class DateDriver {
    public static void main(String[] args) {
        Date dateOne = new Date();
        Date dateTwo = new Date(2019, 11, 12);

        System.out.println("Day: " + dateOne.getDay());
        System.out.println("Month: " + dateOne.getMonth());
        System.out.println("Year: " + dateOne.getYear());
        System.out.println(dateOne.equals(dateTwo));

        dateOne.setYear(2019);
        dateOne.setMonth(11);
        dateTwo.setDay(1);

        System.out.println("Day: " + dateOne.getDay());
        System.out.println("Month: " + dateOne.getMonth());
        System.out.println("Year: " + dateOne.getYear());
        System.out.println(dateOne.equals(dateTwo));
    }
}