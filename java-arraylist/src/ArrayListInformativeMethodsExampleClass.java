import java.util.ArrayList;

public class ArrayListInformativeMethodsExampleClass {
    public static void main(String[] args) {
        containsElement();

        getElement();

        indexOfElement();

        lastIndexOfElement();

        isEmpty();

        size();
    }

    private static void containsElement() {
        /* create an ArrayList of languages*/
        ArrayList<String> languages = new ArrayList<>();

        languages.add("English");
        languages.add("Italiano");
        languages.add("Español");
        languages.add("Deutsch");

        System.out.println("Printing for \"containsElement\" method, initially");
        languages.stream().forEach(System.out::println);
        System.out.println();

        /* check whether greek and spanish exist in the ArrayList*/
        boolean containsGreek = languages.contains("Ελληνικά");
        boolean containsSpanish = languages.contains("Español");

        /* print the result*/
        System.out.println("Printing for \"containsElement\" method, checking whether those two languages exist in the ArrayList");
        System.out.println("Greek in ArrayList: " + containsGreek);
        System.out.println("Spanish in ArrayList: " + containsSpanish);
        System.out.println();
    }

    private static void getElement() {
        /* create an ArrayList of languages*/
        ArrayList<String> languages = new ArrayList<>();

        languages.add("English");
        languages.add("Italiano");
        languages.add("Español");
        languages.add("Deutsch");

        System.out.println("Printing for \"getElement\" method, initially");
        languages.stream().forEach(System.out::println);
        System.out.println();

        /* get the second language in the ArrayList. The element is not removed from the ArrayList, so it's size will be the same*/
        String secondLanguage = languages.get(1);

        /* print the result*/
        System.out.println("Printing for \"getElement\" method, after getting the second language");
        System.out.println("Second language: " + secondLanguage);
        System.out.println();

        /* The size of the ArrayList did not change; there are still four languages in it.*/
        System.out.println("Printing for \"getElement\" method, ArrayList is unchanged");
        languages.stream().forEach(System.out::println);
        System.out.println();
    }

    private static void indexOfElement() {
        /* create an ArrayList of rooms in a house*/
        ArrayList<String> roomsInHouse = new ArrayList<>();

        roomsInHouse.add("living room");
        roomsInHouse.add("bedroom");
        roomsInHouse.add("bathroom");
        roomsInHouse.add("kitchen");
        roomsInHouse.add("bedroom");
        roomsInHouse.add("bedroom");

        System.out.println("Printing for \"indexOfElement\" method, initially");
        roomsInHouse.stream().forEach(System.out::println);
        System.out.println();

        /* get the index of bedroom. Notice that the first occurrence will be returned*/
        int firstBedroom = roomsInHouse.indexOf("bedroom");

        /* print the result*/
        System.out.println("Printing for \"indexOfElement\" method, the first index of bedroom");
        System.out.println("The first bedroom is located at index: " + firstBedroom);
        System.out.println();
    }

    private static void lastIndexOfElement() {
        /* create an ArrayList of rooms in a house*/
        ArrayList<String> roomsInHouse = new ArrayList<>();

        roomsInHouse.add("living room");
        roomsInHouse.add("bedroom");
        roomsInHouse.add("bathroom");
        roomsInHouse.add("kitchen");
        roomsInHouse.add("bedroom");
        roomsInHouse.add("bedroom");

        System.out.println("Printing for \"lastIndexOfElement\" method, initially");
        roomsInHouse.stream().forEach(System.out::println);
        System.out.println();

        /* get the index of bedroom. Notice that the last occurrence will be returned*/
        int lastBedroom = roomsInHouse.lastIndexOf("bedroom");

        /* print the result*/
        System.out.println("Printing for \"lastIndexOfElement\" method, the last index of bedroom");
        System.out.println("The last bedroom is located at index: " + lastBedroom);
        System.out.println();
    }

    private static void isEmpty() {
        /* create an ArrayList of the contents of a drawer*/
        ArrayList<String> upperDrawer = new ArrayList<>();

        upperDrawer.add("books");
        upperDrawer.add("pens");
        upperDrawer.add("notebooks");

        /* create an ArrayList of the contents of another drawer*/
        ArrayList<String> lowerDrawer = new ArrayList<>();

        System.out.println("Printing for \"isEmpty\" method, upper drawer's contents");
        upperDrawer.stream().forEach(System.out::println);
        System.out.println();

        System.out.println("Printing for \"isEmpty\" method, lower drawer's contents");
        lowerDrawer.stream().forEach(System.out::println);
        System.out.println();

        boolean isUpperDrawerEmpty = upperDrawer.isEmpty();
        boolean isLowerDrawerEmpty = lowerDrawer.isEmpty();

        /* print the result*/
        System.out.println("Printing for \"isEmpty\" method, whether the drawers are empty");
        System.out.println("Is the upper drawer empty -> " + isUpperDrawerEmpty);
        System.out.println("Is the lower drawer empty -> " + isLowerDrawerEmpty);
        System.out.println();
    }

    private static void size() {
        /* create an ArrayList of the contents of a bookcase*/
        ArrayList<String> bookcase = new ArrayList<>();

        bookcase.add("Geography book");
        bookcase.add("Math book");
        bookcase.add("English book");
        bookcase.add("Chemistry book");

        System.out.println("Printing for \"size\" method, bookcase's contents");
        bookcase.stream().forEach(System.out::println);
        System.out.println();

        int numberOfBooks = bookcase.size();

        /* print the result*/
        System.out.println("Printing for \"size\" method, the number of books in the bookcase");
        System.out.println("The bookcase has " + numberOfBooks + " books");
        System.out.println();
    }
}
