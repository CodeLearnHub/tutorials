public class NullSynchronizedObjectClass {
    public static void main(String[] args) {
        String nullString = null;

        synchronized (nullString) {
            System.out.println(nullString);
        }
    }
}
