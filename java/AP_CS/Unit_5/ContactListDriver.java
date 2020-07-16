public class ContactListDriver {
    public static void main(String[] args) {
        ContactList cl = new ContactList();

        cl.addContact("Joshua Davis", "925-555-1234");
        cl.addContact("Jim Karas", "925-123-5555");

        Contact c = new Contact("Evan Nishi", "925-111-1111");
        cl.addContact(c);

        cl.addContact(new Contact("Jacob Yousif", "925-212-2121"));

        System.out.println(cl);
    }
}