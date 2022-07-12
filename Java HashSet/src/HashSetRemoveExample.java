import java.util.HashSet;

public class HashSetRemoveExample {
    public static void main(String args[]) {

        HashSet<String> hashSet = new HashSet();
        hashSet.add("John");
        hashSet.add("Georgios");
        hashSet.add("Jim");
        hashSet.add("Constantine");
        hashSet.add("Jim");
        hashSet.remove("Constantine");
        System.out.println(hashSet);
    }
}
