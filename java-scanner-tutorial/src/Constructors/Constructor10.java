package Constructors;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Scanner;

public class Constructor10 {
    public static void main(String args[]) throws IOException {
        Path source = Paths.get("C:\\Desktop\\File.txt");
        System.out.println("Reading from file: " + source);
        Scanner scanner = new Scanner(source, StandardCharsets.UTF_8.name());
        System.out.println(scanner.nextLine());

    }
}
