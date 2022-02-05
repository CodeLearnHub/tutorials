public class ComparingAgainstNullClass {
    public static void main(String[] args) {
        // a null message
        String message = null;

        // we try to print it, instead we get our default message for invalid strings
        printCapitalized(message);

        // we set a message now
        message = "I like apples";

        // all good, the message is printed in capitals
        printCapitalized(message);
    }

    // prints a string in capitals, as long as it's not null or empty
    private static void printCapitalized(String message) {
        // checking for null with "== null" statement
        String messageCapitalized = (message == null) ? "" : message.toUpperCase();

        // a string that is "" can be checked with the isEmpty() method
        if(messageCapitalized.isEmpty()) {
            System.out.println("Your message is empty.");
        } else {
            System.out.println(messageCapitalized);
        }
    }
}
