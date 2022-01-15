public class JavaNoExceptionHandlingExampleClass {
    public static void main(String[] args) {
        noExceptionHandlingExample();
    }

    private static void noExceptionHandlingExample() {
        int[] integerArray = new int[5]; // every element is 0

        // print the array's elements
        System.out.println("Our initial array:");
        for(int integer: integerArray) {
            System.out.print(integer + " ");
        }
        System.out.println();

        // accessing the sixth element of an array with 5 elements
        // this will cause (or throw, as we say) an exception
        integerArray[6] = 5;

        System.out.println("End of noExceptionHandlingExample method");
    }
}
