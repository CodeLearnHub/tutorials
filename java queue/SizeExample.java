import java.util.LinkedList;
import java.util.Queue;

public class SizeExample {
    public static void main(String[] args) {
        Queue<Integer> queue = new LinkedList<Integer>();

        queue.offer(1);
        queue.offer(2);
        queue.offer(3);
        queue.add(4);
        queue.add(5);
        System.out.println("Queue: " + queue);
        System.out.println("Queue: " + queue.size());
    }
}
