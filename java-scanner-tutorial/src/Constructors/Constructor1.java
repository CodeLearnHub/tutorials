package Constructors;

import java.io.File;
import java.util.Scanner;

public class Constructor1 {
    public static void main(String args[])throws Exception {
        File file = new File("C:\\Desktop\\File.txt");
        Scanner scanner = new Scanner(file);
        System.out.println(scanner.nextLine());
        scanner.close();
    }
}
