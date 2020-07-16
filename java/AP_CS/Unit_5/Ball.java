public class Ball {
    private int radius, x, y, dx, dy;

    public Ball(int radius, int x, int y, int dx, int dy) {
        this.radius = radius;
        this.x = x;
        this.y = y;
        this.dx = dx;
        this.dy = dy;
    }

    public int getRadius() {
        return this.radius;
    }

    public int getX() {
        return this.x;
    }

    public int getY() {
        return this.y;
    }

    public void setX(int x) {
        this.x = x;
    }

    public void setY(int y) {
        this.y = y;
    }

    public void reflectX() {
        this.dx = -1 * this.dx;
    }

    public void reflectY() {
        this.dy = -1 * this.dy;
    }

    public void move(int t) {
        this.x += t * this.dx;
        this.y += t * this.dy;
    }

}