import java.util.ArrayList;

public class ArrayListRemovingMethodsExampleClass extends ArrayList<String> {
    public static void main(String[] args) {
        removeAtIndex();

        removeElementIfExists();

        removeAllElementsFromCollection();

        retainAllElementsFromCollection();

        removeAllElementsThatSatisfyFilter();

        removeAllInRange();

        clearAll();
    }

    private static void removeAtIndex() {
        // create an ArrayList of European countries
        ArrayList<String> europeanCountries = new ArrayList<>();

        europeanCountries.add("Greece");
        europeanCountries.add("Lithuania");
        europeanCountries.add("Spain");
        europeanCountries.add("Italy");

        System.out.println("Printing for \"removeAtIndex\" method, initially");
        europeanCountries.stream().forEach(System.out::println);
        System.out.println();

        /* removing the second element. Notice that the ArrayList will have a smaller size by one element.
           Also, the "Spain" became the 2nd element and "Italy" the third (shifted by one place to cover the empty spot) */
        europeanCountries.remove(1);

        System.out.println("Printing for \"removeAtIndex\" method, after removing the country at index = 1");
        europeanCountries.stream().forEach(System.out::println);
        System.out.println();
    }

    private static void removeElementIfExists() {
        // create an ArrayList of European countries
        ArrayList<String> europeanCountries = new ArrayList<>();

        europeanCountries.add("Greece");
        europeanCountries.add("Lithuania");
        europeanCountries.add("Spain");
        europeanCountries.add("Italy");

        System.out.println("Printing for \"removeElementIfExists\" method, initially");
        europeanCountries.stream().forEach(System.out::println);
        System.out.println();

        /* removing "Italy" and then "Germany". "Italy" was removed because it existed in the ArrayList, but "Germany"
        wasn't because it didn't exist in the first place. */
        europeanCountries.remove("Italy");
        europeanCountries.remove("Germany");

        System.out.println("Printing for \"removeElementIfExists\" method, after trying to remove \"Italy\" and \"Germany\"");
        europeanCountries.stream().forEach(System.out::println);
        System.out.println();
    }

    private static void removeAllElementsFromCollection() {
        // create an ArrayList of European countries
        ArrayList<String> europeanCountries = new ArrayList<>();

        europeanCountries.add("Greece");
        europeanCountries.add("Lithuania");
        europeanCountries.add("Spain");
        europeanCountries.add("Italy");

        System.out.println("Printing for \"removeAllElementsFromCollection\" method, initially");
        europeanCountries.stream().forEach(System.out::println);
        System.out.println();

        /* create an ArrayList that contains the Baltic countries. */
        ArrayList<String> balticCountries = new ArrayList<>();

        balticCountries.add("Estonia");
        balticCountries.add("Lithuania");
        balticCountries.add("Latvia");

        /* remove all european countries that are also baltic*/
        europeanCountries.removeAll(balticCountries);

        System.out.println("Printing for \"removeAllElementsFromCollection\" method, after all baltic countries were removed");
        europeanCountries.stream().forEach(System.out::println);
        System.out.println();
    }

    private static void retainAllElementsFromCollection() {
        // create an ArrayList of European countries
        ArrayList<String> europeanCountries = new ArrayList<>();

        europeanCountries.add("Greece");
        europeanCountries.add("Lithuania");
        europeanCountries.add("Spain");
        europeanCountries.add("Italy");

        System.out.println("Printing for \"retainAllElementsFromCollection\" method, initially");
        europeanCountries.stream().forEach(System.out::println);
        System.out.println();

        /* create an ArrayList that contains the Baltic countries. */
        ArrayList<String> balticCountries = new ArrayList<>();

        balticCountries.add("Estonia");
        balticCountries.add("Lithuania");
        balticCountries.add("Latvia");

        /* remove all european countries that are not baltic*/
        europeanCountries.retainAll(balticCountries);

        System.out.println("Printing for \"retainAllElementsFromCollection\" method, after all non baltic countries were removed");
        europeanCountries.stream().forEach(System.out::println);
        System.out.println();
    }

    private static void removeAllElementsThatSatisfyFilter() {
        // create an ArrayList of numbers
        ArrayList<Integer> numbers = new ArrayList<>();

        numbers.add(15);
        numbers.add(20);
        numbers.add(1);
        numbers.add(30);

        System.out.println("Printing for \"removeAllElementsThatSatisfyFilter\" method, initially");
        numbers.stream().forEach(System.out::println);
        System.out.println();

        /* remove all numbers that are greater than 15. */
        numbers.removeIf(n -> n > 15);

        System.out.println("Printing for \"removeAllElementsThatSatisfyFilter\" method, after removing all numbers greater than 15");
        numbers.stream().forEach(System.out::println);
        System.out.println();
    }

    public static void removeAllInRange() {
        /* Because "removeRange" method is protected, any class using it must extend ArrayList.
        *  In our case, "ArrayListRemovingMethodsExampleClass" class is wrapper class for an ArrayList<String>
        *  In the examples above, we could replace all ArrayList<String> with the following statement. */

        // create an ArrayList of greek capital letters
        ArrayListRemovingMethodsExampleClass greekLetters = new ArrayListRemovingMethodsExampleClass();

        greekLetters.add("Δ"); // index = 0
        greekLetters.add("Σ"); // index = 1
        greekLetters.add("Ω"); // index = 2 <- this will be removed
        greekLetters.add("Ψ"); // index = 3 <- this will be removed
        greekLetters.add("Γ"); // index = 4 <- this will be removed
        greekLetters.add("Λ"); // index = 5 <- this will be removed
        greekLetters.add("Π"); // index = 6 <- this will NOT be removed
        greekLetters.add("Ξ"); // index = 7


        System.out.println("Printing for \"removeAllInRange\" method, initially");
        greekLetters.stream().forEach(System.out::println);
        System.out.println();

        /* remove all letters 4 letters, starting from index = 2. */
        greekLetters.removeRange(2,6);

        System.out.println("Printing for \"removeAllInRange\" method, after removing all letters between indices 2 and 6 (exclusive)");
        greekLetters.stream().forEach(System.out::println);
        System.out.println();

        /* example of same first and last index; no effect will happen */
        greekLetters.removeRange(1,1);

        System.out.println("Printing for \"removeAllInRange\" method, after trying to remove elements in a range with same first and last index");
        greekLetters.stream().forEach(System.out::println);
        System.out.println();
    }

    private static void clearAll() {
        // create an ArrayList of colors
        ArrayList<String> colors = new ArrayList<>();

        colors.add("magenta");
        colors.add("cyan");
        colors.add("yellow");

        System.out.println("Printing for \"clearAll\" method, initially");
        colors.stream().forEach(System.out::println);
        System.out.println();

        /* remove all numbers that are greater than 15. */
        colors.clear();

        System.out.println("Printing for \"clearAll\" method, after all elements have been removed");
        colors.stream().forEach(System.out::println);
        System.out.println();
    }
}
