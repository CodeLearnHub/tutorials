import java.util.ArrayList;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Spliterator;

public class ArrayListIteratorMethodsExampleClass {
    public static void main(String[] args) {
        iterator();

        listIteratorNoIndex();

        listIteratorWithIndex();

        spliterator();
    }

    private static void iterator() {
        /* create an ArrayList of Italian cities*/
        ArrayList<String> italianCities = new ArrayList<>();

        italianCities.add("Napoli");
        italianCities.add("Roma");
        italianCities.add("Firenze");
        italianCities.add("Mestre");

        System.out.println("Printing for \"iterator\" method, the initial ArrayList of Italian cities printed without iterator");
        italianCities.stream().forEach(System.out::println);
        System.out.println();

        /* create an Iterator over the ArrayList. It starts from index = 0*/
        Iterator italianCitiesIterator = italianCities.iterator();

        /* printing the elements again, this time using our iterator*/
        System.out.println("Printing for \"iterator\" method, the ArrayList of Italian cities printed with iterator");

        /* hasNext() is used to check whether the iterator has reached the end of the ArrayList*/
        while(italianCitiesIterator.hasNext()) {

            /* next() return the next element of the ArrayList*/
            System.out.println(italianCitiesIterator.next());
        }
        System.out.println();
    }

    private static void listIteratorNoIndex() {
        /* create an ArrayList of Italian cities*/
        ArrayList<String> italianCities = new ArrayList<>();

        italianCities.add("Napoli");
        italianCities.add("Roma");
        italianCities.add("Firenze");
        italianCities.add("Mestre");

        System.out.println("Printing for \"listIteratorNoIndex\" method, the initial ArrayList of Italian cities printed without iterator");
        italianCities.stream().forEach(System.out::println);
        System.out.println();

        /* create a ListIterator over the ArrayList. This ListIterator starts from index = 0 */
        ListIterator italianCitiesIterator = italianCities.listIterator();

        /* printing the elements again, this time using our iterator*/
        System.out.println("Printing for \"listIteratorNoIndex\" method, the ArrayList of Italian cities printed with ListIterator, in forward order");

        /* hasNext() is used to check whether the iterator has reached the end of the ArrayList.
        *  Since the iterator is at the beginning of the ArrayList, hasPrevious() = false*/
        while(italianCitiesIterator.hasNext()) {

            /* next() return the next element of the ArrayList*/
            System.out.println(italianCitiesIterator.next());
        }
        System.out.println("\nPrinting for \"listIteratorNoIndex\" method, the ListIterator now is at the end of the ArrayList. We can print the ArrayList in reverse now.\n");

        /* printing the elements again, in reverse order, using our iterator*/
        System.out.println("Printing for \"listIteratorNoIndex\" method, the ArrayList of Italian cities printed with ListIterator, in reverse order");

        /* hasPrevious() is used to check whether the iterator has reached the beginning of the ArrayList*/
        while(italianCitiesIterator.hasPrevious()) {

            /* previous() return the previous element of the ArrayList*/
            System.out.println(italianCitiesIterator.previous());
        }
        System.out.println();
    }

    private static void listIteratorWithIndex() {
        /* create an ArrayList of Italian cities*/
        ArrayList<String> italianCities = new ArrayList<>();

        italianCities.add("Napoli");
        italianCities.add("Roma");
        italianCities.add("Firenze");
        italianCities.add("Mestre");

        System.out.println("Printing for \"listIteratorWithIndex\" method, the initial ArrayList of Italian cities printed without iterator");
        italianCities.stream().forEach(System.out::println);
        System.out.println();

        /* create a ListIterator over the ArrayList. This ListIterator starts from index = 2 */
        ListIterator italianCitiesIterator = italianCities.listIterator(2);

        /* printing the elements again, this time using our iterator*/
        System.out.println("Printing for \"listIteratorWithIndex\" method, the ArrayList of Italian cities printed with ListIterator, in forward order, starting from the 3rd city");

        while(italianCitiesIterator.hasNext()) {
            System.out.println(italianCitiesIterator.next());
        }
        System.out.println();
    }

    private static void spliterator() {
        /* create an ArrayList of Italian cities*/
        ArrayList<String> italianCities = new ArrayList<>();

        italianCities.add("Napoli");
        italianCities.add("Roma");
        italianCities.add("Firenze");
        italianCities.add("Mestre");

        System.out.println("Printing for \"spliterator\" method, the initial ArrayList of Italian cities printed without iterator");
        italianCities.stream().forEach(System.out::println);
        System.out.println();

        /* create a Spliterator over the ArrayList. This Spliterator starts from index = 0 */
        Spliterator italianCitiesIterator = italianCities.spliterator();

        /* printing the elements again, this time using our iterator*/
        System.out.println("Printing for \"spliterator\" method, the ArrayList of Italian cities printed with Spliterator");

        italianCitiesIterator.forEachRemaining(n -> System.out.println(n));

        System.out.println();
    }
}
