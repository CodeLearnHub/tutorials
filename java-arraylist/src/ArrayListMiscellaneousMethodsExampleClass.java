import java.util.ArrayList;
import java.util.Collections;

public class ArrayListMiscellaneousMethodsExampleClass {
    public static void main(String[] args) {
        ensureCapacity();

        forEach();

        sort();

        trimToSize();
    }

    private static void ensureCapacity() {
        /* create an ArrayList of people invited to a party*/
        ArrayList<String> namesOfInvitedPeople = new ArrayList<>();

        namesOfInvitedPeople.add("Dimitris");
        namesOfInvitedPeople.add("Akis");
        namesOfInvitedPeople.add("Ignis");
        namesOfInvitedPeople.add("Katerina");

        System.out.println("Printing for \"ensureCapacity\" method, the initial ArrayList of people invited to a party");
        namesOfInvitedPeople.stream().forEach(System.out::println);
        System.out.println();

        namesOfInvitedPeople.ensureCapacity(50);

        System.out.println("Printing for \"ensureCapacity\" method, the capacity of the ArrayList has been increased to 50.\n" +
                "Its size doesn't change yet, so it's still equal to " + namesOfInvitedPeople.size());
        System.out.println();
    }

    private static void forEach() {
        /* create an ArrayList of people invited to a party*/
        ArrayList<String> namesOfInvitedPeople = new ArrayList<>();

        namesOfInvitedPeople.add("Dimitris");
        namesOfInvitedPeople.add("Akis");
        namesOfInvitedPeople.add("Ignis");
        namesOfInvitedPeople.add("Katerina");

        System.out.println("Printing for \"forEach\" method, the initial ArrayList of people invited to a party");
        namesOfInvitedPeople.stream().forEach(System.out::println);
        System.out.println();

        /* apply the same action for each name in the ArrayList. In our case, all people introduce themselves*/
        System.out.println("Printing for \"forEach\" method, the guests introduce themselves");
        namesOfInvitedPeople.forEach(personName -> System.out.println("My name is " + personName +". Nice to meet you!"));
        System.out.println();
    }

    private static void sort() {
        /* create an ArrayList of people invited to a party*/
        ArrayList<String> namesOfInvitedPeople = new ArrayList<>();

        namesOfInvitedPeople.add("Dimitris");
        namesOfInvitedPeople.add("Akis");
        namesOfInvitedPeople.add("Ignis");
        namesOfInvitedPeople.add("Katerina");

        System.out.println("Printing for \"sort\" method, the initial ArrayList of people invited to a party");
        namesOfInvitedPeople.stream().forEach(System.out::println);
        System.out.println();

        /* sort the people alphabetically, in reverse. reverseOrder() is a built-in Comparator*/
        namesOfInvitedPeople.sort(Collections.reverseOrder());

        /* print the result*/
        System.out.println("Printing for \"sort\" method, the guests are sorted alphabetically, in reverse order");
        namesOfInvitedPeople.stream().forEach(System.out::println);
        System.out.println();
    }

    private static void trimToSize() {
        /* create an ArrayList of people invited to a party, expecting at least 50 people*/
        ArrayList<String> namesOfInvitedPeople = new ArrayList<>(50);

        namesOfInvitedPeople.add("Dimitris");
        namesOfInvitedPeople.add("Akis");
        namesOfInvitedPeople.add("Ignis");
        namesOfInvitedPeople.add("Katerina");

        System.out.println("Printing for \"trimToSize\" method, the initial ArrayList of people invited to a party");
        namesOfInvitedPeople.stream().forEach(System.out::println);
        System.out.println();

        /* trim the empty spaces of the ArrayList. This change is not visible to us; It's used for optimization*/
        namesOfInvitedPeople.trimToSize();

        /* print the result*/
        System.out.println("Printing for \"trimToSize\" method, after trimToSize() the number of guests is still " + namesOfInvitedPeople.size());
        namesOfInvitedPeople.stream().forEach(System.out::println);
        System.out.println();
    }
}
