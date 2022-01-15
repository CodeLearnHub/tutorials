import java.io.IOException;

public class JavaExceptionHandlingClassExample {
    public static void main(String[] args) {
        // Uncomment the methods you would like to be executed

//        genericExceptionHandlingExample();

//        specificExceptionHandlingExample();

//        multipleExceptionHandlingExample();

//        finallyBlockExample(6, 2);
//        finallyBlockExample(3, 0);

        trueFinallyBlockExample(6, 2);
        trueFinallyBlockExample(3, 0);
    }

    private static void genericExceptionHandlingExample() {
        int[] integerArray = new int[5]; // every element is 0

        // print the array's elements
        System.out.println("Our initial array:");
        for(int integer: integerArray) {
            System.out.print(integer + " ");
        }
        System.out.println();

        // try to access the sixth element of the array
        try {
            integerArray[6] = 5;
        } catch (Exception e) {
            e.printStackTrace(); // prints the exception that we would get otherwise
        }

        System.out.println("End of genericExceptionHandlingExample method");
    }

    private static void specificExceptionHandlingExample() {
        int[] integerArray = new int[5]; // every element is 0

        // print the array's elements
        System.out.println("Our initial array:");
        for(int integer: integerArray) {
            System.out.print(integer + " ");
        }
        System.out.println();

        // try to access the sixth element of the array
        try {
            integerArray[6] = 5;
        } catch (ArrayIndexOutOfBoundsException e) {
            e.printStackTrace(); // prints the exception that we would get otherwise
        }

        System.out.println("End of specificExceptionHandlingExample method");
    }

    private static void multipleExceptionHandlingExample() {
        int[] integerArray = new int[5]; // every element is 0.0

        // we execute an assignment at a random index with a random number 10 times, catching any exception that happens along the way
        for(int i = 0; i < 10; i++) {
            System.out.println("Attempt " + (i + 1));

            int randomNumber = (int) (15 + Math.random() * 15); // numbers in [15,30]
            int randomIndex = (int) (0 + Math.random() * 10); // indices in [0,10]
            boolean divideByZero = Math.random() > 0.5 ? true : false;

            try {
                if(divideByZero) {
                    integerArray[randomIndex] = randomNumber / 0;
                } else {
                    integerArray[randomIndex] = randomNumber;
                }

                System.out.println("Successfully assigned integerArray[" + randomIndex + "] = " + randomNumber);
            } catch (ArrayIndexOutOfBoundsException e) {
                System.out.println("Inside ArrayIndexOutOfBoundsException, because we tried to access the index " + randomIndex);
            } catch (ArithmeticException e) {
                System.out.println("Inside ArithmeticException, because we tried to divide zero with " + randomNumber);
            }

            System.out.println();
        }
    }

    private static void finallyBlockExample(int firstNumber, int secondNumber) {
        System.out.println("Trying to do the division: " + firstNumber + " / " + secondNumber);

        try {
            int number = firstNumber / secondNumber;
            System.out.println(number);
        } catch (ArithmeticException e) {
            System.out.println("An ArithmeticException was caused");
        } finally {
            System.out.println("Inside finally block");
        }

        System.out.println("End of finallyBlockExample method\n");
    }

    private static void trueFinallyBlockExample(int firstNumber, int secondNumber) {
        System.out.println("Trying to do the division: " + firstNumber + " / " + secondNumber);

        try {
            int number = firstNumber / secondNumber;
            System.out.println(number);
        } catch (IndexOutOfBoundsException e) {
            System.out.println("An IndexOutOfBoundsException was caused");
        } finally {
            System.out.println("Inside finally block");
        }

        System.out.println("End of trueFinallyBlockExample method\n");
    }
}
