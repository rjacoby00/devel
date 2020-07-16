public class Paint {

        public static void main(String[] args) {

            final int COVERAGE = 350;  //paint covers 350 sq ft/gal
            int length, width, height; //declare integers length, width, and height;
            double totalSqFt; //declare double totalSqFt;
            double paintNeeded; //declare double paintNeeded;
			
			int doors = 1;
			int windows = 2;
			
 				
            length = 15; //Declare and initialize the length of the room
 
            width = 11; //Declare and initialize the width of the room
 
            height = 8; //Declare and initialize the height of the room
 
            totalSqFt = 2 * (length * width + width * height + length * height) - 20 * doors - 15 * windows; //Compute the total square feet to be painted--think
           																		//about the dimensions of each wall
 
            paintNeeded = totalSqFt / COVERAGE; //Compute the amount of paint needed
 
            //Print the length, width, and height of the room and the
            //number of gallons of paint needed.
            System.out.println("Length: " + length + "\nWidth: " + width + "\nHeight: " + height + "\nPaint needed: " +  paintNeeded + "gal"); 
        }
}
