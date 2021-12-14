package Constructors;

import java.util.Scanner;

public class Constructor6 {
    public static void main(String[] args) {
        String string = "CodelearnHub Scanner Class Tutorial";
        Scanner scanner = new Scanner(string);
        System.out.println(scanner.nextLine());
        scanner.close();
    }
}
