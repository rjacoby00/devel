public class Bacon {
    public static void main(String[] args) {
        String input = "whaT iS up witH thiS craZy CAPiTaLIzatIoN? It is suPer weiRd! realLY!";
        String output = "";

        for(int i = 0; i < input.length(); i++) {
            if((int)input.charAt(i) < 95) output += 'A';
            else output += 'B';
        }

        System.out.println(output);
    }
};