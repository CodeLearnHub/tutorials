import java.util.HashSet;
import java.util.Iterator;

public class HashSetIteratorExample {
    public static void main(String args[]) {

        HashSet<String> hashSet = new HashSet();
        hashSet.add("John");
        hashSet.add("Georgios");
        hashSet.add("Jim");
        hashSet.add("Constantine");
        hashSet.add("Jim");

        Iterator<String> i=hashSet.iterator();
        while(i.hasNext())
        {
            System.out.println(i.next());
        }
    }
}

