import java.util.HashSet;
import java.util.Iterator;

public class HashSetAddExample {

        public static void main(String args[]){

            HashSet<String> hashSet=new HashSet();
            hashSet.add("John");
            hashSet.add("Georgios");
            hashSet.add("Jim");
            hashSet.add("Constantine");
            hashSet.add("Jim");
            System.out.println(hashSet);
        }
}
