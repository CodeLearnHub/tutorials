package TypesOfInheritance.MultipleInheritanceEx.WithInterfaces;

public interface Cat {

    default void sleep() {
        System.out.println("A cat is sleeping.");
    }

}
