import java.util.ArrayList;

public class ArrayListReplacingMethodsExampleClass {

    public static void main(String[] args) {
        replaceAll();

        set();
    }

    public static void replaceAll() {
        /* create an ArrayList of numbers*/
        ArrayList<Integer> numbers = new ArrayList<>();

        numbers.add(3);
        numbers.add(12);
        numbers.add(0);
        numbers.add(-43);
        numbers.add(-9);

        System.out.println("Printing for \"replaceAll\" method, bookcase's contents");
        numbers.stream().forEach(System.out::println);
        System.out.println();

        /* replace all numbers with their triple value*/
        numbers.replaceAll(n -> n * 3);

        /* print the result*/
        System.out.println("Printing for \"replaceAll\" method, all values are replaced by their tripled values");
        numbers.stream().forEach(System.out::println);
        System.out.println();
    }

    public static void set() {
        /* create an ArrayList of planets*/
        ArrayList<String> planets = new ArrayList<>();

        planets.add("Earth");
        planets.add("Pluto");
        planets.add("Mercury");
        planets.add("Venus");


        System.out.println("Printing for \"set\" method, some planets of our Solar System");
        planets.stream().forEach(System.out::println);
        System.out.println();

        /* replace Pluto with Mars*/
        planets.set(1, "Mars");

        /* print the result*/
        System.out.println("Printing for \"set\" method, Mars replacing Pluto");
        planets.stream().forEach(System.out::println);
        System.out.println();
    }
}
