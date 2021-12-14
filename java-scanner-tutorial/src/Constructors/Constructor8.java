package Constructors;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.nio.charset.StandardCharsets;
import java.util.Scanner;

public class Constructor8 {
    public static void main(String[] args) throws FileNotFoundException {
        Scanner scanner = new Scanner(new FileInputStream("C:\\Desktop\\File.txt").getChannel(), StandardCharsets.UTF_8.name());
        System.out.println(scanner.nextLine());
        scanner.close();
    }
}
