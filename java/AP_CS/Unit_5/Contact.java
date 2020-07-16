import jdk.nashorn.internal.runtime.regexp.joni.ast.StringNode;

public class Contact {
    private String name;
    private String phoneNumber;

    
    /** 
     * @return 
     */
    public Contact() {
        this.name = "";
        this.phoneNumber = "";
    }

    
    /** 
     * @param name
     * @param phoneNumber
     * @return 
     */
    public Contact(String name, String phoneNumber) {
        this.name = name;
        this.phoneNumber = phoneNumber;
    }

    
    /** 
     * @param c
     * @return 
     */
    public Contact(Contact c) {
        this.name = c.getName();
        this.phoneNumber = c.getPhoneNumber();
    }

    
    /** 
     * @return String
     */
    public String getName() {
        return this.name;
    }

    
    /** 
     * @return String
     */
    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    
    /** 
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    
    /** 
     * @param phoneNumber
     */
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String toString() {
        return this.name + ": " + this.phoneNumber;
    }
}