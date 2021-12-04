import java.util.ArrayList;
import java.util.List;

public class ArrayListCloningMethodsExampleClass {
    public static void main(String[] args) {
        subList();
    }

    private static void subList() {
        /* create an ArrayList of car brands*/
        ArrayList<String> carBrands = new ArrayList<>();

        carBrands.add("Toyota");
        carBrands.add("Lamborghini");
        carBrands.add("Ferrari");
        carBrands.add("Fiat");

        System.out.println("Printing for \"subList\" method, all car brands");
        carBrands.stream().forEach(System.out::println);
        System.out.println();

        /* create a List of expensive car brands*/
        List<String> expensiveCarBrands = carBrands.subList(1,3);

        /* print the new List*/
        System.out.println("Printing for \"subList\" method, only expensive car brands");
        expensiveCarBrands.stream().forEach(System.out::println);
        System.out.println();

        /* Let's modify the new List, replace Lamborghini with Audi*/
        expensiveCarBrands.set(0, "Audi");

        /* Expensive car brands for reference*/
        System.out.println("---------------------------------------------------------------------------------------------------------");
        System.out.println("Printing for \"subList\" method, modification on expensive car brands List");
        expensiveCarBrands.stream().forEach(System.out::println);
        System.out.println();

        /* print the initial List.*/
        System.out.println("Printing for \"subList\" method, all car brands list has changed. Lamborghini has been replaced by Audi");
        carBrands.stream().forEach(System.out::println);
        System.out.println();

        /* Now let's add a new brand and print the initial ArrayList again*/
        expensiveCarBrands.add("Mercedes");

        /* Expensive car brands for reference*/
        System.out.println("---------------------------------------------------------------------------------------------------------");
        System.out.println("Printing for \"subList\" method, addition on expensive car brands List");
        expensiveCarBrands.stream().forEach(System.out::println);
        System.out.println();

        System.out.println("Printing for \"subList\" method, all car brands list has a new element, which is placed at the end of the newly created expensive car brands List");
        carBrands.stream().forEach(System.out::println);
        System.out.println();

        /* Finally, removing an expensive car brand will also remove it from the initial ArrayList*/
        expensiveCarBrands.remove(1);

        /* Expensive car brands for reference*/
        System.out.println("---------------------------------------------------------------------------------------------------------");
        System.out.println("Printing for \"subList\" method, deletion on expensive car brands List");
        expensiveCarBrands.stream().forEach(System.out::println);
        System.out.println();

        System.out.println("Printing for \"subList\" method, all car brands list has one less element; Ferrari has been removed");
        carBrands.stream().forEach(System.out::println);
        System.out.println();
    }
}
