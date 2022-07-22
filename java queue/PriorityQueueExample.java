import java.util.PriorityQueue;
import java.util.Queue;

public class PriorityQueueExample {
    public static void main(String args[]){

        Queue<Integer> queue = new PriorityQueue<Integer>();

        queue.add(45);
        queue.add(13);
        queue.add(50);

        System.out.println(queue.peek());
        System.out.println(queue.poll());
        System.out.println(queue.peek());
    }
}

