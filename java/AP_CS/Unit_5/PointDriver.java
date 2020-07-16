public class PointDriver {
    
    public static void main(String[] args) {
        //Default constructor: 0, 0
        Point p = new Point();

        //Overloaded constructor: 1, 1
        Point pOne = new Point(1, 1);

        //Overloaded constructor, copies p: 0, 0
        Point pTwo = new Point(p);

        //Clones pOne, does not make another point
        Point pThree = pOne;

        System.out.println(p.equals(pTwo));
    }
}