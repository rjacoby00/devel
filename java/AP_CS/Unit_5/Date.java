public class Date{
    private int year, month, day;

    
    /** 
     * Creates date at UNIX time = 0
     * @return 
     */
    public Date() {
        this.year = 1970;
        this.month = 1;
        this.day = 1;
    }

    
    /** 
     * Creates date at given day, month, and year
     * @param year
     * @param month
     * @param day
     * @return 
     */
    public Date(int year, int month, int day) {
        this.year = year;
        this.month = month;
        this.day = day;
    }

    
    /** 
     * Sets the year of the date
     * @param year
     */
    public void setYear(int year) {
        this.year = year;
    }

    
    /** 
     * Sets the month of th date
     * @param month
     */
    public void setMonth(int month) {
        this.month = month;
    }

    
    /** 
     * Sets the day of the date
     * @param day
     */
    public void setDay(int day) {
        this.day = day;
    }

    
    /** 
     * Returns the year of the date
     * @return int
     */
    public int getYear() {
        return this.year;
    }

    
    /** 
     * Returns the month of the date
     * @return int
     */
    public int getMonth() {
        return this.month;
    }

    
    /** 
     * Returns the day of the date
     * @return int
     */
    public int getDay() {
        return this.day;
    }

    
    /** 
     * Returns a string fomatted0 'd/m/y'
     * @return String
     */
    public String toString() {
        return this.day + "/" + this.month + "/" + this.year;
    }

    
    /** 
     * Compares two dates
     * @param date
     * @return boolean
     */
    public boolean equals(Date date) {
        return this.day == date.getDay() && this.month == date.getMonth() && this.year == date.getYear();
    }
}