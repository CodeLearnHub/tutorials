import com.sun.org.apache.bcel.internal.classfile.Code;

import java.util.Stack;

public class PushToStack {
    public static void main(String[] args){

        Stack firststack = new Stack();
        Stack<String> secondstack = new Stack<String>();


        firststack.push("Code");
        firststack.push("Learn");
        firststack.push("Hub");
        firststack.push(4);
        firststack.push("you");

        secondstack.push("Code");
        secondstack.push("Learn");
        secondstack.push("Hub");

        System.out.println(firststack);
        System.out.println(secondstack);
    }
}

