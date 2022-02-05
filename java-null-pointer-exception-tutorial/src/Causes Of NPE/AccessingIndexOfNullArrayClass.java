public class AccessingIndexOfNullArrayClass {
    public static void main(String args[]) {
        // a null array
        int[] nullArray = null;

        // trying to access the element of a null array results in NPE
        int firstElement = nullArray[0];

        // this will not be executed
        System.out.println(firstElement);
    }
}
