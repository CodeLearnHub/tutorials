package TypesOfInheritance.MultipleInheritanceEx.WithInterfaces;

public class Test implements Cat, Dog {

    public static void main(String[] args) {
        Test test = new Test();
        test.sleep();
    }

    public void sleep() {
        Dog.super.sleep();
        Cat.super.sleep();
    }

}
