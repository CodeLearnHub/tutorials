import java.util.ArrayList;

public class ArrayListAddingMethodsExampleClass {
    public static void main(String[] args) {
        add();

        addAtIndex();

        addAllAtTheEnd();

        addAllAtIndex();
    }

    private static void add() {
        ArrayList<String> names = new ArrayList<>();

        System.out.println("Printing for \"add\" method, empty ArrayList");
        names.stream().forEach(System.out::println);
        System.out.println();

        names.add("Dimitris");
        names.add("Akis");
        names.add("Ignis");

        System.out.println("Printing for \"add\" method, after adding elements");
        names.stream().forEach(System.out::println);
        System.out.println();
    }

    private static void addAtIndex() {
        ArrayList<String> names = new ArrayList<>();

        names.add("Dimitris");
        names.add("Akis");
        names.add("Ignis");

        System.out.println("Printing for \"addAtIndex\" method, initially");
        names.stream().forEach(System.out::println);
        System.out.println();

        // inserting a new element in 2nd position
        names.add(1,"Katerina");

        System.out.println("Printing for \"addAtIndex\" method, after inserting an element at index = 1");
        names.stream().forEach(System.out::println);
        System.out.println();
    }

    private static void addAllAtTheEnd() {
        // create an ArrayList of European countries
        ArrayList<String> europeanCountries = new ArrayList<>();

        europeanCountries.add("Greece");
        europeanCountries.add("Spain");
        europeanCountries.add("Italy");

        System.out.println("Printing for \"addAllAtTheEnd\" method, initially");
        europeanCountries.stream().forEach(System.out::println);
        System.out.println();

        // creating a new ArrayList of more European countries
        ArrayList<String> moreEuropeanCountries = new ArrayList<>();

        moreEuropeanCountries.add("Lithuania");
        moreEuropeanCountries.add("Austria");
        moreEuropeanCountries.add("Hungary");

        // add all new countries in our first ArrayList
        europeanCountries.addAll(moreEuropeanCountries);

        System.out.println("Printing for \"addAllAtTheEnd\" method, after inserting the new countries");
        europeanCountries.stream().forEach(System.out::println);
        System.out.println();
    }

    private static void addAllAtIndex() {
        // create an ArrayList of European countries
        ArrayList<String> europeanCountries = new ArrayList<>();

        europeanCountries.add("Greece");
        europeanCountries.add("Spain");
        europeanCountries.add("Italy");

        System.out.println("Printing for \"addAllAtIndex\" method, initially");
        europeanCountries.stream().forEach(System.out::println);
        System.out.println();

        // creating a new ArrayList of more European countries
        ArrayList<String> moreEuropeanCountries = new ArrayList<>();

        moreEuropeanCountries.add("Lithuania");
        moreEuropeanCountries.add("Austria");
        moreEuropeanCountries.add("Hungary");

        // add all new countries in our first ArrayList, at the specified position
        europeanCountries.addAll(1, moreEuropeanCountries);

        System.out.println("Printing for \"addAllAtIndex\" method, after inserting the new countries, at index = 1");
        europeanCountries.stream().forEach(System.out::println);
        System.out.println();
    }
}
