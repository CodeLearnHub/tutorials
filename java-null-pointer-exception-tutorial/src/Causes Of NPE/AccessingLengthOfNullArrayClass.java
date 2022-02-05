public class AccessingLengthOfNullArrayClass {
    public static void main(String args[]) {
        // a null array
        int[] nullArray = null;

        // trying to get the length of a null array results in NPE
        int nullArrayLength = nullArray.length;

        // this will not be executed
        System.out.println(nullArrayLength);
    }
}
