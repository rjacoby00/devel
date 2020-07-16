
public class ThreeArgs {
	public static void main(String[] args) {
		printInfo("Ryan", 16, 11);
	}

	public static void printInfo(String name, int age, int grade) {
		System.out.println("Hello, " + name + ".  You are " + age + " years old and in grade " + grade + ".");
	}
}