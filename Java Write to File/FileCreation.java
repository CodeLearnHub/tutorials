import java.io.File;
import java.io.IOException;

public class FileCreation {

    public static void main(String[] args) {
        try {
            File myObj = new File("Codelearnhub.txt");

            if (myObj.createNewFile()) {
                System.out.println("File created: " + myObj.getName());
            } else {
                System.out.println("File already exists.");
            }

        } catch (IOException e) {
            System.out.println("There is an error.");
            e.printStackTrace();
        }
    }
}
