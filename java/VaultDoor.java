import java.lang.Math;
import java.util.*;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import java.security.*;
import java.util.Arrays;

class VaultDoor {
  public static void main(String args[]) {
    Scanner b = new Scanner(System.in);
    System.out.print("Enter vault password: ");
    String c = b.next();
    String f = c.substring(8, c.length() - 1);
    VaultDoor a = new VaultDoor();
    if (a.checkPassword(f)) { // Checks password, I need to find the 
      System.out.println("Access granted.");
    } else {
      System.out.println("Access denied!");
      getPasssword();
    }
  }

  public static char[] scramble(String password) {
    /* Scramble a password by transposing pairs of bits. */
    char[] a = password.toCharArray();
    for (int b = 0; b < a.length; b++) {
      char c = a[b];
      c = switchBits(c, 6, 7);
      c = switchBits(c, 2, 5);
      c = switchBits(c, 3, 4);
      c = switchBits(c, 0, 1);
      
      c = switchBits(c, 4, 7);
      c = switchBits(c, 5, 6);
      c = switchBits(c, 0, 3);
      c = switchBits(c, 1, 2);
      a[b] = c;
    }
    return a;
  }

  // Presumable does what it says, I dont really understand bit shifting
  public static char switchBits(char c, int p1, int p2) {
    /* Move the bit in position p1 to position p2, and move the bit
    that was in position p2 to position p1. Precondition: p1 < p2 */
    char mask1 = (char)(1 << p1);
    char mask2 = (char)(1 << p2); /* char mask3 = (char)(1<<p1<<p2); mask1++; mask1--; */
    char bit1 = (char)(c & mask1);
    char bit2 = (char)(c & mask2);
    /* System.out.println("bit1 " + Integer.toBinaryString(bit1));
    System.out.println("bit2 " + Integer.toBinaryString(bit2)); */
    char rest = (char)(c & ~(mask1 | mask2));
    char shift = (char)(p2 - p1);
    char result = (char)((bit1 << shift) | (bit2 >> shift) | rest);
    return result;
  }

  // Scrambles given password with scramble method, checks if it is the same
  public boolean checkPassword(String password) {
    char[] scrambled = scramble(password);
    char[] expected = {
      0xF4,
      0xC0,
      0x97,
      0xF0,
      0x77,
      0x97,
      0xC0,
      0xE4,
      0xF0,
      0x77,
      0xA4,
      0xD0,
      0xC5,
      0x77,
      0xF4,
      0x86,
      0xD0,
      0xA5,
      0x45,
      0x96,
      0x27,
      0xB5,
      0x77,
      0xA4,
      0xF1,
      0x94,
      0xC1,
      0xC0,
      0xE1,
      0xC1,
      0xD1,
      0x85
    };
    return Arrays.equals(scrambled, expected);
  }

  // My code, tries to undo password check
  // Output(wrong): ÍyÌõyÌõLõÍ)Li±ÙõÜI\
  public static void getPasssword() {
    String charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789`~!@#$%^&*()_+=-[]{}\\;<>,.?/";
    
    char[] a = {
      0xF4,
      0xC0,
      0x97,
      0xF0,
      0x77,
      0x97,
      0xC0,
      0xE4,
      0xF0,
      0x77,
      0xA4,
      0xD0,
      0xC5,
      0x77,
      0xF4,
      0x86,
      0xD0,
      0xA5,
      0x45,
      0x96,
      0x27,
      0xB5,
      0x77,
      0xA4,
      0xF1,
      0x94,
      0xC1,
      0xC0,
      0xE1,
      0xC1,
      0xD1,
      0x85
    };

    System.out.println("Finding password!\n");

    for (int i = 0; i < charset.length(); i++) {
      System.out.print(charset.substring(i, i + 1) + ":" + (int)(scramble(charset.substring(i, i + 1))[0]) + " ");
    }

    System.out.println("\n");
    
    for (int i = 0; i < a.length; i++) {
      for (int j = 0; j < charset.length(); j++) {
        if ((int)(scramble(charset.substring(j, j + 1))[0]) == (int)(a[i]))
          System.out.print(charset.substring(j, j + 1));
      }
    }
    
	System.out.println();

  System.out.println(scramble("ôÀðwÀäðw¤ÐÅwôÐ¥E'µw¤ñÁÀáÁÑ"));
  }
}
