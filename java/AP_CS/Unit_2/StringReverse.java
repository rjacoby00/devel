public class StringReverse {
	public static void main(String[] args) {

		System.out.println(reverse("test"));
	}

	public static String reverse(String inputString) {
		String reversed = "";
		for (int i = inputString.length(); i > 0; i--) {
			reversed += inputString.charAt(i - 1);
		}
		
		return reversed;
	}
}