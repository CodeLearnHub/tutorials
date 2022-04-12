import java.util.Stack;

public class SearchInStack {
    public static void main(String[] args) {

        Stack<Integer> STACK = new Stack<Integer>();

        STACK.push(20);
        STACK.push(35);
        STACK.push(40);
        STACK.push(50);
        STACK.push(94);

        System.out.println("Is a '20' inside the stack?: "+ STACK.search(20));
        System.out.println("Is a '14' inside the stack?: " + STACK.search(14));
    }
}
