import java.io.FileOutputStream;
import java.io.IOException;

public class FileOutputStreamExample {

    public static void main(String[] args) {

        String text = "CodeLearnHub Text";
        FileOutputStream outputStream = null;


        try {
            outputStream = new FileOutputStream("CodeLearnHub.txt");
            byte[] strToBytes = text.getBytes();
            outputStream.write(strToBytes);
            System.out.print("Content was written successfully!");
        }

        catch (IOException e) {
            System.out.print(e.getMessage());
        }


    }
}
