import java.util.LinkedList;
import java.util.Queue;

public class LinkedListExample {
    public static void main(String args[]){

        Queue<Integer> queue = new LinkedList<Integer>();

        queue.add(45);
        queue.add(13);
        queue.add(50);

        System.out.println(queue.peek());
        System.out.println(queue.poll());
        System.out.println(queue.peek());
    }
}
