package Constructors;

import java.io.File;
import java.nio.charset.StandardCharsets;
import java.util.Scanner;

public class Constructor4 {
    public static void main(String args[]) {
        Scanner in = new Scanner(System.in,StandardCharsets.UTF_8.name());
        System.out.println("Enter a String: ");
        String str = in.nextLine();
        System.out.println("The String you entered is: " + str);
        in.close();
    }
}
