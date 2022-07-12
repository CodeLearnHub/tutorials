import java.util.HashSet;

public class HashSetIsEmptyExample {
    public static void main(String args[]) {

        HashSet<String> hashSet = new HashSet();
        hashSet.add("John");
        hashSet.add("Georgios");
        hashSet.add("Jim");
        hashSet.add("Constantine");
        hashSet.add("Jim");
        System.out.println(hashSet.isEmpty());
    }
}
