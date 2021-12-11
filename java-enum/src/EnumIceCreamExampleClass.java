// define an outer enum of the people who can may eat an ice cream.
enum Person {
    DIMITRIS, AKIS, IGNIS;
}

public class EnumIceCreamExampleClass {

    // define an inner enum representing ice cream flavours
    enum IceCreamFlavour {
        // By Java convention, enum values are written in all capital letters
        VANILLA, CHOCOLATE, STRAWBERRY, BANANA;
    }

    public static void main(String[] args) {
        // choose banana flavour
        IceCreamFlavour iceCream = IceCreamFlavour.BANANA;

        // choose who can eat the ice cream
        Person personWithIceCream = Person.DIMITRIS;

        // the following cannot be written; Enums cannot be instantiated because they do not have a public constructor
//        Person invalidPerson = new Person();

        // printing the enum will print its name
        System.out.println(personWithIceCream + " is eating a " + iceCream + " ice cream");
    }
}
