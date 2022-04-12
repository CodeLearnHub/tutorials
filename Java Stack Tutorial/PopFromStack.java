import java.util.Stack;

public class PopFromStack {
    public static void main(String args[]) {

        Stack<String> stack = new Stack<String>();

        stack.push("Code");
        stack.push("Learn");
        stack.push("Hub");
        stack.push("for");
        stack.push("you");


        System.out.println("Stack: " + stack);
        System.out.println("First Popped element: "+ stack.pop());
        System.out.println("Second Popped element: "+ stack.pop());
        System.out.println("Final stack:  "+ stack);
    }
}

