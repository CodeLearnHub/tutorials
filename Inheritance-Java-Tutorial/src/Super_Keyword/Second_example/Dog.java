package Super_Keyword.Second_example;

public class Dog extends Animal {

    public void walk() {
        System.out.println("Dog walking...");
    }

    public void printMethods() {
        super.walk();
        walk();
    }

}
