import java.util.Stack;

public class StackIsEmpty {
    public static void main(String[] args){

        Stack<String> stack = new Stack<String>();
        stack.push("Code");
        stack.push("Learn");
        stack.push("Hub");

        System.out.println("Is it empty? " + stack.empty());

        stack.pop();
        stack.pop();
        stack.pop();
        System.out.println("Is it empty? " + stack.empty());
    }
}
