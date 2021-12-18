public class JavaSwitchDefaultKeywordExampleClass {
    public static void main(String[] args) {
        switchDefaultKeyword(2);

        switchDefaultKeyword(11);
    }

    private static void switchDefaultKeyword(int myNumber) {
        System.out.println("switchDefaultKeyword with number " + myNumber);

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
        }
    }
}
