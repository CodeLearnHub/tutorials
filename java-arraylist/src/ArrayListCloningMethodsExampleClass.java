import java.util.ArrayList;
import java.util.List;

public class ArrayListCloningMethodsExampleClass {
    public static void main(String[] args) {
        subList();

        toArrayNoArgument();

        toArrayWithArgument();

        cloneArrayList();
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

    private static void toArrayNoArgument() {
        /* create an ArrayList of US states*/
        ArrayList<String> usStates = new ArrayList<>();

        usStates.add("New York");
        usStates.add("California");
        usStates.add("Texas");
        usStates.add("Nevada");

        System.out.println("Printing for \"toArrayNoArgument\" method, the initial ArrayList of US states");
        usStates.stream().forEach(System.out::println);
        System.out.println();

        /* create an Object[] Array containing the states*/
        Object[] usStatesArray = usStates.toArray();

        System.out.println("Printing for \"toArrayNoArgument\" method, the Object[] Array populated with toArray()");
        for(int i = 0; i < usStatesArray.length; i++) {
            System.out.println(usStatesArray[i]);
        }
        System.out.println();

        /* with the following we would get a compile time error. Uncomment to check it out*/
//        String[] usStatesArrayCompileTimeError = usStates.toArray();

        /* and with the following we would get a runtime exception, ClassCastException. Uncomment to check it out*/
//        String[] usStatesArrayRuntimeError = (String[]) usStates.toArray();

        /* so, in order to use a String[] Array directly, we would have to use the toArray(T[] a) method, not this one*/

        /* of course, it's possible to use a for loop to get an Array out of an ArrayList like so:*/

        /* firstly, create a String[] with the same size as the ArrayList*/
        String[] usStatesStringArray = new String[usStates.size()];

        /* and then use a for loop to populate the newly created String[] Array*/
        System.out.println("Printing for \"toArrayNoArgument\" method, the String[] Array, populated with a 'for' loop");
        for(int i = 0; i < usStatesStringArray.length; i++) {
            usStatesStringArray[i] = usStates.get(i);
            System.out.println(usStatesStringArray[i]);
        }
        System.out.println();
    }

    private static void toArrayWithArgument() {
        /* create an ArrayList of US states*/
        ArrayList<String> usStates = new ArrayList<>();

        usStates.add("New York");
        usStates.add("California");
        usStates.add("Texas");
        usStates.add("Nevada");

        System.out.println("Printing for \"toArrayWithArgument\" method, the initial ArrayList of US states");
        usStates.stream().forEach(System.out::println);
        System.out.println();

        /* create a String[] with the same size as the ArrayList*/
        String[] usStatesStringArray = new String[usStates.size()];

        /* use the toArray method, passing our newly created, empty Array*/
        usStatesStringArray = usStates.toArray(usStatesStringArray);

        /* print the result*/
        System.out.println("Printing for \"toArrayWithArgument\" method, the String[] Array, populated with the toArray(String[]) method");
        for(int i = 0; i < usStatesStringArray.length; i++) {
            System.out.println(usStatesStringArray[i]);
        }
        System.out.println();
    }

    private static void cloneArrayList() {
        /* create an ArrayList of US states*/
        ArrayList<String> usStates = new ArrayList<>();

        usStates.add("New York");
        usStates.add("California");
        usStates.add("Texas");
        usStates.add("Nevada");

        System.out.println("Printing for \"cloneArrayList\" method, the initial ArrayList of US states");
        usStates.stream().forEach(System.out::println);
        System.out.println();

        /* create a new generic ArrayList that is a copy of the initial ArrayList*/
        ArrayList copyOfUsStates = new ArrayList<>();

        /* we have to typecast it, because clone returns an Object*/
        copyOfUsStates = (ArrayList) usStates.clone();

        /* print the result*/
        System.out.println("Printing for \"cloneArrayList\" method, the clone of ArrayList of US states");
        copyOfUsStates.stream().forEach(System.out::println);
        System.out.println();

        copyOfUsStates.set(0, "Nebraska");

        System.out.println("Printing for \"cloneArrayList\" method, the initial ArrayList of US states=------");
        usStates.stream().forEach(System.out::println);
        System.out.println();

        System.out.println("Printing for \"cloneArrayList\" method, the clone of ArrayList of US states");
        copyOfUsStates.stream().forEach(System.out::println);
        System.out.println();
    }
}
