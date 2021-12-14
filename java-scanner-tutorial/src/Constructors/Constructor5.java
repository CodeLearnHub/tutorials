package Constructors;

import java.io.StringReader;
import java.util.Scanner;

public class Constructor5 {
    public static void main(String[] args) {
        String s = "CodelearnHub Scanner Class Tutorial";
        Scanner scanner = new Scanner(new StringReader(s));
        System.out.println(scanner.nextLine());
        scanner.close();
    }
}
