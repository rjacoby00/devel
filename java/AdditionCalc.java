import java.util.Scanner;
import java.awt.Desktop;
import java.net.URI;
public class AdditionCalc{  
 public static void main(String[] Args) throws Exception{
  Scanner input = new Scanner(System.in);
  System.out.println("hello please enter a number");
  int number = input.nextInt();
     
  Desktop d = Desktop.getDesktop();
  d.browse(new URI("https://www.youtube.com/watch?v=dQw4w9WgXcQ"));
    }   
}
