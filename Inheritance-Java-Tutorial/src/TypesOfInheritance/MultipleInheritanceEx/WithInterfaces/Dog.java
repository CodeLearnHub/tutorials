package TypesOfInheritance.MultipleInheritanceEx.WithInterfaces;

public interface Dog {

    default void sleep() {
        System.out.println("A dog is sleeping.");
    }

}
