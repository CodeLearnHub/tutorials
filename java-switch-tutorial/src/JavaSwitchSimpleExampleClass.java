public class JavaSwitchSimpleExampleClass {
    public static void main(String[] args) {
        switchSimpleExample(1);

        switchSimpleExample(3);

        switchSimpleExample(42);
    }

    private static void switchSimpleExample(int myNumber) {
        System.out.println("switchSimpleExample with number " + myNumber);

        // myNumber is an int, so all cases must be of the same type, int
        switch(myNumber) {
            case 1:
                System.out.println("I am number one!\n");
                break;
            case 2:
                System.out.println("I am number two!\n");
                break;
            case 3:
                System.out.println("I am number three!\n");
                break;
            default:
                System.out.println("I am not one, two or three...\n");
        }
    }
}
