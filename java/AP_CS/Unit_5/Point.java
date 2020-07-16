public class Point {
    private int x, y;

    /**
     * Creates point with default cooridnates of 0, 0
     */
    public Point() {
         this.x = this.y = 0;
    }

    /**
     * Creates point with coordinates provided
     * @param x
     * @param y
     */
    public Point(int x, int y) {
        this.x = x;
        this.y = y;
    }

    /**
     * Clones another point
     * @param p
     */
    public Point(Point p) {
        this.x = p.x;
        this.y = p.y;
    }

    /**
     * Returns x-coordinate of point
     * @return x
     */
    public int getX() {
        return this.x;
    }

    /**
     * Returns y-coordiante of point
     * @return y
     */
    public int getY() {
        return this.y;
    }

    /**
     * Sets x-coordinate of point
     * @param x
     */
    public void setX(int x) {
        this.x = x;
    }
    
    /**
     * Sets y-coordinate of point
     * @param y
     */
    public void setY(int y) {
        this.y = y;
    }
    
    /**
     * Moves the point
     * @param x
     * @param y
     */
    public void move(int x, int y) {
        this.x += x;
        this.y += y;
    }

    /**
     * Checks if this point is equal to the passed point
     * @param p
     * @return boolean
     */
    public boolean equals(Point p) {
        return this.x == p.x && this.y == p.y;
    }

    /**
     * Returns a formatted string of the Point
     * @return string
     */
    public String toString() {
        return "(" + this.x + ", " + this.y + ")";
    }
}