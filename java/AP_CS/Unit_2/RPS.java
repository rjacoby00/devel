import java.util.Scanner;

public class RPS {
    public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		
        char personPlay = ' ';
        int personInt = 0;
        int computerPlay;
        int score = 0;
							//You: Rock, Paper, Scisors
		String[][] outcomeTable = {{"1Tie!", "2You win, paper covers rock!", "0You loose, rock crushes scisors!"}, 	// Computer: Rock
								   {"0You loose, paper covers rock!", "1Tie!", "2You win, scisors cut paper!"},		// Computer: Paper
								   {"2You win, rock crushes scisors!", "0You loose, scisors cut paper!", "1Tie!"}};	// Computer: Scisors

        // Chose random play for computer
  		char[] playToChar = {'R', 'P', 'S'};

		for (int i = 0; i < 5; i++) { // Play five rounds, best out of five.
			computerPlay = (int)(Math.random()*3);
			
			// Get input from person, make sure it is R, P, or S
			while (personPlay != 'R' && personPlay != 'P' && personPlay != 'S'){
				System.out.print("\nEnter R, P, or S: ");
				personPlay = input.nextLine().toUpperCase().charAt(0);
				
				if (personPlay != 'R' && personPlay != 'P' && personPlay != 'S') {
					System.out.print("That is not one of the choices.  ");
				}
			}

			if (personPlay == 'R') { personInt = 0; }
			else if (personPlay == 'P') { personInt = 1; }
			else if (personPlay == 'S') { personInt = 2; }
			
			System.out.println("Computer played: " + playToChar[computerPlay]);
	        System.out.println(outcomeTable[computerPlay][personInt].substring(1));
	
	        score += (Integer.parseInt(outcomeTable[computerPlay][personInt].substring(0,1)) - 1);
	        personPlay = ' ';
	        if (score == 0 && i == 4) {
	        	System.out.println("Tiebreaker round!");
	        	i = 3;
	        }
		}
		
        if (score > 0) {
        	System.out.println("\nYou win!\n") ;
        } else {
        	System.out.println("\nYou loose!\n");
        }
    }
}
