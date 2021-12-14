package Constructors;

import java.io.File;

import java.nio.charset.StandardCharsets;
import java.util.Scanner;

public class Constructor2 {
    public static void main(String[] args) throws Exception {
        Scanner scanner = new Scanner(new File("C:\\Desktop\\File.txt"), StandardCharsets.UTF_8.name());
        System.out.println(scanner.nextLine());
        scanner.close();
    }
}
