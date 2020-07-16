public class ContactDriver {
    public static void main(String[] args) {
        Contact c = new Contact("Joshua Davis", "925-555-1234");

        System.out.println("Name: " + c.getName());
        System.out.println("Phone Number: " + c.getPhoneNumber());
        System.out.println(c);
        
    }
}