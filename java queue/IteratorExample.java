import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

public class IteratorExample {
    public static void main(String[] args) {
        Queue<Integer> queue = new LinkedList<Integer>();
        queue.add(1);
        queue.add(2);
        queue.add(3);
        queue.add(4);
        queue.add(5);
        Iterator<Integer> iterator = queue.iterator();


        while (iterator.hasNext()) {
            System.out.println(iterator.next());
        }
    }
}
