package Constructors;

import java.util.Scanner;

public class Constructor3 {
    public static void main(String args[]) {
        Scanner in = new Scanner(System.in);
        System.out.println("Enter a String: ");
        String str = in.nextLine();
        System.out.println("The String you entered is: " + str);
        in.close();
    }
}
