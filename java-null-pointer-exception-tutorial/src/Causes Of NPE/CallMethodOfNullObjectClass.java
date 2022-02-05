import java.util.Locale;

public class CallMethodOfNullObjectClass {
    public static void main(String[] args) {
        // String is an object; it works similarly to all objects, including custom-made classes
        String nullString = null;

        // this will throw a NPE
        String nullLowercase = nullString.toLowerCase(Locale.ROOT);

        // we won't reach this statement
        System.out.println(nullLowercase);
    }
}
