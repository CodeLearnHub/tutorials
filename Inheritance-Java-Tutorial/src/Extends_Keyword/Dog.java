package Extends_Keyword;

public class Dog extends Animal {

    public String secondAnswer = "It's definitely a dog!!";

    public static void main(String[] args) {

        Dog ob = new Dog();

        System.out.println(ob.question);
        ob.noise();
        System.out.println(ob.secondAnswer);
    }
}
