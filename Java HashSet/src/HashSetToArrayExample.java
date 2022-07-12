import java.util.HashSet;
public class HashSetToArrayExample {

    public static void main(String args[]) {

        HashSet<String> hashSet = new HashSet<String>();

        hashSet.add("John");
        hashSet.add("Georgios");
        hashSet.add("Jim");
        hashSet.add("Constantine");


        Object[] arr = hashSet.toArray();

        System.out.println("The array is:");
        for (int j = 0; j < arr.length; j++)
            System.out.println(arr[j]);
    }
}