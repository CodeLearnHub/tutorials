import java.util.Queue;
import java.util.concurrent.PriorityBlockingQueue;

public class PriorityBlockingQueueExample {
    public static void main(String args[]){

        Queue<Integer> queue = new PriorityBlockingQueue<Integer>();


        queue.add(45);
        queue.add(13);
        queue.add(50);

        System.out.println(queue.peek());
        System.out.println(queue.poll());
        System.out.println(queue.peek());
    }
}
