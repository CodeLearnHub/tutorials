package TypesOfInheritance.MultilevelInheritanceEx;

public class Test {

    public static void main(String[] args) {
        Puppy puppy = new Puppy();
        Dog secondPuppy = new Puppy();
        puppy.walk();
        puppy.sleep();
        puppy.cry();
        secondPuppy.sleep();
        secondPuppy.walk();
    }
}
