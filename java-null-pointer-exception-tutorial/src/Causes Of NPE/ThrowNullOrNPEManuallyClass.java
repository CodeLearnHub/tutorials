public class ThrowNullOrNPEManuallyClass {
    public static void main(String[] args) {
        throwNull();

        // this will not be executed, unless you comment out line 4
        throwNPE();
    }

    // throws a null which results in NPE
    private static void throwNull() {
        throw null;
    }

    // throws a NPE directly
    private static void throwNPE() {
        throw new NullPointerException();
    }
}
