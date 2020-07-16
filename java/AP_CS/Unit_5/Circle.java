public class Circle {
    private double radius;
    private Point center;

    
    /** 
     * Creates Circle at 0, 0 with radius of 0
     */
    public Circle() {
        this.radius = 0.0;
        this.center = new Point();
    }

    
    /** 
     * Creates Circle at coordinates of point and provided radius
     * @param radius
     * @param center
     */
    public Circle(double radius, Point center) {
        this.radius = radius;
        this.center = center;
    }

    
    /** 
     * Returns the Point at the center of the Circle
     * @return Point
     */
    public Point getCenter() {
        return this.center;
    }

    
    /** 
     * Returns the radius
     * @return double
     */
    public double getRadius() {
        return this.radius;
    }

    
    /** 
     * Sets the new center to the passed Point
     * @param center
     */
    public void setCenter(Point center) {
        this.center = center;
    }

    
    /** 
     * Sets the radius to the passed double
     * @param radius
     */
    public void setRadius(double radius) {
        this.radius = radius;
    }

    
    /** 
     * Returns a pretty-printed string of the info, radius and center Point
     * @return String
     */
    public String toString() {
        return "Radius: " + this.radius + '\n' + "Center: " + this.center.toString();
    }

    
    /** 
     * Returns the area of the math as a double
     * @return double
     */
    public double findArea() {
        return Math.PI * radius * radius; 
    }

    
    /** 
     * Moves the circle dx, dy.  Set dy or dx negative to go left/down.
     * @param dx
     * @param dy
     */
    public void translateCenter(int dx, int dy) {
        this.center.move(dx, dy);
    }


    /**
     * Checks if radius and center of this and passed Circle are equal
     * @param c
     * @return boolean
     */
    public boolean equals(Circle c) {
        return this.center.equals(c.center) && this.radius == c.radius;
    }
} 