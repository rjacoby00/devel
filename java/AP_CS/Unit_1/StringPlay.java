public class StringPlay {
	public static void main(String[] args) {
		String college = new String("PoDunk College");
		
		String town = new String("Anytown, USA");

		int stringLength;
		String changeOne, changeTwo, changeThree;

		stringLength = college.length();

		System.out.println(college + " contains " + stringLength + " characters.");

		changeOne = college.toUpperCase();
		changeTwo = changeOne.replace("O", "*");
		changeThree = changeTwo + ", " + town;

		System.out.println("The final string is " + changeThree);
	}
}