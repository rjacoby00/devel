public class CircleDriver {
    public static void main(String[] args) {
        Circle c = new Circle(4, new Point(3, 5));
        Circle c1 = new Circle();
        Circle c2 = c;

        System.out.println(c);
        System.out.println(c1);
        System.out.println(c2);
        System.out.println(c.equals(c1));
        System.out.println(c.equals(c2));
        System.out.println(c == c2);

        c.setRadius(5);
        c.translateCenter(1, -1);

        System.out.println(c);
    }
}