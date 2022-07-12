import java.util.HashSet;

public class HashSetToArrayExample2 {
    public static void main(String args[])
    {

        HashSet<String> hashSet = new HashSet<String>();


        hashSet.add("John");
        hashSet.add("Georgios");
        hashSet.add("Jim");
        hashSet.add("Constantine");


        System.out.println("The HashSet: "+ hashSet);

        // The arr1 has more cells than the HashSet elements
        String [] arr1 = new String [8];
        arr1 = hashSet.toArray(arr1);

        print(arr1);

        // A new array is allocated with the run time type of the specified array and the size of this HashSet.
        String [] arr2 = new String [2];
        arr2 = hashSet.toArray(arr2);

        print(arr2);
    }

    public static void print(String arr[]) {
        System.out.println("\nNew array:");
        for (int j = 0; j < arr.length; j++)
            System.out.println(arr[j]);
    }
}
