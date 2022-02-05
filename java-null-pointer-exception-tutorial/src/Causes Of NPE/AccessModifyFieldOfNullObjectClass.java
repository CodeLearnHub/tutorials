public class AccessModifyFieldOfNullObjectClass {
    public static void main(String[] args) {
        // create a null object of custom-made class
        Person nullPerson = null;

        // accessing the name variable will throw a NPE
        nullPerson.getName();

        // this will not get executed. However, you can comment out line 7 in order to get a NPE here
        nullPerson.setName("Professor Chaos");
    }
}

class Person {
    private String name;

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
