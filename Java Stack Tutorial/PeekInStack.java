import java.util.Stack;

public class PeekInStack {
    public static void main(String args[]) {

        Stack<String> stack = new Stack<String>();

        stack.push("Code");
        stack.push("Learn");
        stack.push("Hub");

        System.out.println("Initial Stack: " + stack);
        System.out.println("The element at the top of the stack is: " + stack.peek());
    }
}

