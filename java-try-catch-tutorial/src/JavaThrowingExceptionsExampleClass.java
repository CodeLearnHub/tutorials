public class JavaThrowingExceptionsExampleClass {
    private static void printPositiveNumber(int number) {
        if(number <= 0) {
            throw new IllegalArgumentException("Only positive numbers are allowed, " + number + " is not positive.");
        } else {
            System.out.println("All good, " + number + " is positive.");
        }
    }

    public static void main(String[] args) {
        try {
            printPositiveNumber(6);

            System.out.println();

            printPositiveNumber(-4);
        } catch (IllegalArgumentException e) {
            System.err.println(e);
        }
    }
}
