public class JavaPrimitivesExamplesClass {
    static byte defaultByte;
    static short defaultShort;
    static int defaultInt;
    static long defaultLong;
    static float defaultFloat;
    static double defaultDouble;
    static char defaultChar;
    static boolean defaultBoolean;

    private static void byteExample() {
        byte myByte = 33;

        System.out.println("byteExample()");
        System.out.println("byte assigned value: " + myByte);
        System.out.println("byte default value: " + defaultByte);
        System.out.println();
    }

    private static void shortExample() {
        short myShort = 500;

        System.out.println("shortExample()");
        System.out.println("short assigned value: " + myShort);
        System.out.println("short default value: " + defaultShort);
        System.out.println();
    }

    private static void intExample() {
        int myInt = 100000;

        System.out.println("intExample()");
        System.out.println("int assigned value: " + myInt);
        System.out.println("int default value: " + defaultInt);
        System.out.println();
    }

    private static void longExample() {
        long myLong = 3000000000l;

        System.out.println("longExample()");
        System.out.println("long assigned value: " + myLong);
        System.out.println("long default value: " + defaultLong);
        System.out.println();
    }

    private static void floatExample() {
        // The following will not compile without the "f", because the compiler thinks it's a double.
        float myFloat = -432.660f;

        System.out.println("floatExample()");
        System.out.println("float assigned value: " + myFloat);
        System.out.println("float default value: " + defaultFloat);
        System.out.println();
    }

    private static void doubleExample() {
        double myDouble = -432.660;

        System.out.println("doubleExample()");
        System.out.println("double assigned value: " + myDouble);
        System.out.println("double default value: " + defaultDouble);
        System.out.println();
    }

    private static void charExample() {
        char myChar = 'p';
        char piChar = 960; // hex value is 03C0 (0x03C0), so decimal value is 960

        System.out.println("charExample()");
        System.out.println("char assigned value: " + myChar);
        System.out.println("char pi: " + piChar);
        System.out.println("char default value: " + defaultChar);
        System.out.println();
    }

    private static void booleanExample() {
        boolean myBoolean = true;
        boolean threeGreaterThanTwoBoolean = 3 > 2; // a wrong mathematical inequality will assign false to the variable

        System.out.println("booleanExample()");
        System.out.println("boolean assigned value: " + myBoolean);
        System.out.println("boolean 3 > 2? : " + threeGreaterThanTwoBoolean);
        System.out.println("boolean default value: " + defaultBoolean);
        System.out.println();
    }

    private static void overflowAndUnderflowExample() {
        byte maxByte = Byte.MAX_VALUE; // maximum value of byte

        System.out.println("overflowAndUnderflowExample()");
        System.out.println("maxByte before overflow: " + maxByte);

        maxByte++; // increase its value by one, causing the variable to overflow

        System.out.println("maxByte after overflow: " + maxByte);

        int minInt = Integer.MIN_VALUE; // minimum value of int
        System.out.println("minInt before underflow: " + minInt);

        minInt--; // decrease its value by one, causing the variable to underflow

        System.out.println("minInt after underflow: " + minInt);

        System.out.println();
    }

    public static void main(String[] args) {
        convertDecimalToInteger();

        byteExample();

        shortExample();

        intExample();

        longExample();

        convertIntegerToDecimal();

        floatExample();

        doubleExample();

        charExample();

        booleanExample();

        overflowAndUnderflowExample();
    }

    private static void convertDecimalToInteger() {
        int anInt = (int) 5.6;

        System.out.println("convertDecimalToInteger()");
        System.out.println("Converting 5.6 to integer is " + anInt);
        System.out.println();
    }

    private static void convertIntegerToDecimal() {
        double aDouble = 42;

        System.out.println("convertIntegerToDecimal()");
        System.out.println("Converting 42 to integer is " + aDouble);
        System.out.println();
    }
}
