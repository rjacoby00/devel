public class ContactList {
    private Contact[] list;
    private int contacts;

    public ContactList() {
        this.list = new Contact [10];
        contacts = 0;
    }

    public void addContact(String name, String phoneNumber) {
        list[contacts] = new Contact(name, phoneNumber);
        contacts++;
    }

    public void addContact(Contact c) {
        int i;
        for(i = 0; i < this.list.length; i++)
            if(this.list[i] == null){
                list[i] = new Contact(c);
                contacts++;
                return;
            }
    }

    public String toString() {
        String ret = "";
        for (int i = 0; i < contacts; i++) {
            ret += list[i] + "\n";
        }
        return ret;
    }

    public Contact[] getContacts() {
        return list;
    }
}