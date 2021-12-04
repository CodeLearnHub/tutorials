import java.util.ArrayList;
import java.util.HashMap;

public class ArrayListConstructorsExampleClass {
    public static void main(String[] args) {
        constructSimpleArrayList();

        constructArrayListFromAnotherCollection();

        constructArrayListWithInitialCapacity();
    }

    private static void constructSimpleArrayList() {
        /* Initialize a simple ArrayList of colors (String).*/
        ArrayList<String> colors = new ArrayList<>();
        colors.add("red");
        colors.add("green");
        colors.add("blue");

        System.out.println("Printing for \"constructSimpleArrayList\" method");
        colors.stream().forEach(System.out::println);
        System.out.println();
    }

    private static void constructArrayListFromAnotherCollection() {
        /* Initialize a simple HashMap of with key of type String and value of type String.*/

        HashMap<String, String> continentsAndCountries = new HashMap<>();
        continentsAndCountries.put("Europe", "Greece");
        continentsAndCountries.put("North America", "USA");
        continentsAndCountries.put("Asia", "Japan");

        /* Create an ArrayList from the HashMap's values*/
        ArrayList countries = new ArrayList(continentsAndCountries.values());
        System.out.println("Printing for \"constructArrayListFromAnotherCollection\" method");
        countries.stream().forEach(System.out::println);
        System.out.println();
    }


    private static void constructArrayListWithInitialCapacity() {
        /* Initialize an ArrayList with an inital capacity*/

        ArrayList<Integer> evenNumbers = new ArrayList(3);
        evenNumbers.add(0);
        evenNumbers.add(2);
        evenNumbers.add(4);

        System.out.println("Printing for \"constructArrayListWithInitialCapacity\" method, at capacity 3.");
        evenNumbers.stream().forEach(System.out::println);
        System.out.println();

        /* We can add more numbers without any problems. The ArrayList's size will simply increase.*/
        evenNumbers.add(200);
        evenNumbers.add(404);

        System.out.println("Printing for \"constructArrayListWithInitialCapacity\" method, with increased capacity.");
        evenNumbers.stream().forEach(System.out::println);
        System.out.println();
    }
}
