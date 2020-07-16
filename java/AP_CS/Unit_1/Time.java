public class Time {
	public static void main(String[] args) {
		int start_hour = 10;
		int start_minute = 5;
		int start_second = 30;
		int hour = 10;
		int minute = 29;
		int second = 0;
		
		int secondsPassed = 3600 * hour + 60 * minute + second;
		int start_secondsPassed = 3600 * start_hour + 60 * start_minute + start_second;
		
		System.out.println(secondsPassed + " seconds have passed since midnight");
		System.out.println(secondsPassed / 86400.0 * 100 + " percent of the day is gone");

		int secondsCoding = secondsPassed - start_secondsPassed;
		int hoursCoding = secondsCoding / 3600;
		int minutesCoding = (secondsCoding - (3600 * hoursCoding)) / 60;
		secondsCoding = secondsCoding - (3600 * hoursCoding) - (60 * minutesCoding);

		System.out.println("You spent " + hoursCoding + ":" + minutesCoding + ":" + secondsCoding + " coding this");
		
	}
}