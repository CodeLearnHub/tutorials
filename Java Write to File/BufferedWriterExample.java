import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class BufferedWriterExample {
    public static void main(String[] args)
    {
        String text = "CodeLearnHub Text";
        try {

            BufferedWriter writer = new BufferedWriter(new FileWriter("CodeLearnHub.txt"));

            writer.write(text);
            System.out.println(text);
            System.out.println( "Content was written successfully!");
            writer.close();
        }
        catch (IOException e) {
            System.out.print(e.getMessage());
        }
    }
}
