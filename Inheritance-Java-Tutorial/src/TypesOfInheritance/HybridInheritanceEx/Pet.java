package TypesOfInheritance.HybridInheritanceEx;

public class Pet extends Dog {

    public static void main(String[] args) {
        Pet pet = new Pet();
        pet.sleep();
    }

    public void sleep() {
        System.out.println("A pet is sleeping.");
    }
}
