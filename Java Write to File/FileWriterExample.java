import java.io.FileWriter;
import java.io.IOException;

    public class FileWriterExample {

        public static void main(String[] args) {

            String text = "CodeLearnHub Text";

            try {
                FileWriter writer = new FileWriter("CodeLearnHub.txt");
                writer.write(text);
                System.out.println(text);
                writer.close();
                System.out.println("Content was written successfully!");
            }
            catch (IOException e) {
                System.out.print(e.getMessage());
            }
        }
    }

