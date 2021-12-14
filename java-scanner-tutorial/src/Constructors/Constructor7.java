package Constructors;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Constructor7{
    public static void main(String[] args) throws FileNotFoundException {
        Scanner scanner = new Scanner(new FileInputStream("C:\\Desktop\\File.txt").getChannel());
        System.out.println(scanner.nextLine());
        scanner.close();
    }
}
