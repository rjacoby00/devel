import java.util.*;

public class BitShift {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		String enigma;

		System.out.println("Enter bytes(ASCII): ");
		enigma = scan.nextLine();

		for (int i = 0; i < enigma.length(); i++)
			System.out.print((char)enigma.charAt(i)>>>1);
	}
}