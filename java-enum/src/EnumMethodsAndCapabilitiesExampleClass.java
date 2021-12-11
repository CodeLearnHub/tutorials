public class EnumMethodsAndCapabilitiesExampleClass {
    // define an enum representing ice cream flavours
    enum IceCreamFlavour {

        // each flavour has an integer representing the number of scoops allowed for each flavour, due to availability
        VANILLA(2), CHOCOLATE(3), STRAWBERRY(1), BANANA(1);

        // declare a variable for each flavour. It's not necessary to be private and/or final.
        private int scoopsOfIceCream;

        // constructor is private by default
        IceCreamFlavour(int scoops) {
            this.scoopsOfIceCream = scoops;
        }
    }

    private static void enumConstructor() {
        System.out.println("----------------------start of enumConstructor()----------------------\n");
        // create a chocolate ice cream
        IceCreamFlavour chocolateIceCream = IceCreamFlavour.CHOCOLATE;

        // print our choice
        System.out.println("I choose " + chocolateIceCream);

        // default scoops given for chocolate ice creams
        System.out.println("Initially, I was given " + chocolateIceCream.scoopsOfIceCream + " scoops of " + chocolateIceCream + " ice cream");

        // ask for more
        chocolateIceCream.scoopsOfIceCream += 2;

        // print our total scoops now
        System.out.println("After asking for more, I now have " + chocolateIceCream.scoopsOfIceCream + " scoops of " + chocolateIceCream + " ice cream");
        System.out.println("\n-----------------------end of enumConstructor()-----------------------\n");
    }

    private static void enumIfStatements() {
        System.out.println("----------------------start of enumIfStatements()----------------------\n");
        // create an ice cream flavour
        IceCreamFlavour myFlavour = IceCreamFlavour.CHOCOLATE;

        if(myFlavour == IceCreamFlavour.VANILLA) {
            System.out.println("This is vanilla ice cream!");
        } else if(myFlavour == IceCreamFlavour.CHOCOLATE) {
            System.out.println("This is chocolate ice cream!");
        } else if(myFlavour == IceCreamFlavour.STRAWBERRY) {
            System.out.println("This is strawberry ice cream!");
        } else if(myFlavour == IceCreamFlavour.BANANA) {
            System.out.println("This is banana ice cream!");
        }
        System.out.println("\n-----------------------end of enumIfStatements()-----------------------\n");
    }

    private static void enumSwitchStatements() {
        System.out.println("----------------------start of enumSwitchStatements()----------------------\n");
        // create an ice cream flavour
        IceCreamFlavour myFlavour = IceCreamFlavour.CHOCOLATE;

        switch (myFlavour) {
            case VANILLA:
                System.out.println("This is vanilla ice cream!");
                break;
            case CHOCOLATE:
                System.out.println("This is chocolate ice cream!");
                break;
            case STRAWBERRY:
                System.out.println("This is strawberry ice cream!");
                break;
            case BANANA:
                System.out.println("This is banana ice cream!");
                break;
        }

        System.out.println("\n-----------------------end of enumSwitchStatements()-----------------------\n");
    }

    private static void enumLoopWithValues() {
        System.out.println("----------------------start of enumLoopWithValues()----------------------\n");

        System.out.println("Our available ice cream flavours are:\n");

        System.out.println("Using an ordinary for loop");
        for(int i = 0; i < IceCreamFlavour.values().length; i++) {
            System.out.println(IceCreamFlavour.values()[i]);
        }

        System.out.println("\nUsing an enchanced for loop");
        for(IceCreamFlavour flavour : IceCreamFlavour.values()) {
            System.out.println(flavour);
        }

        System.out.println("\n-----------------------end of enumLoopWithValues()-----------------------\n");
    }

    private static void enumValueOf() {
        System.out.println("----------------------start of enumValueOf()----------------------\n");

        // ask whether the store offers strawberry ice creams
        System.out.println("-Do you have strawberry ice cream?");
        requestIceCreamFlavour("STRAWBERRY");

        // now ask about stracciatella ice creams
        System.out.println("\n-Do you also have stracciatella ice cream?");
        requestIceCreamFlavour("STRACCIATELLA");

        System.out.println("\n-----------------------end of enumValueOf()-----------------------\n");
    }

    private static void requestIceCreamFlavour(String name) {
        try {
            IceCreamFlavour requestedFlavour = IceCreamFlavour.valueOf(name);
            System.out.println("-Yes, we offer " + requestedFlavour + " ice cream!");
        } catch (IllegalArgumentException exception) {
            System.out.println("-I'm sorry but we do not offer " + name + " ice cream.");
        }
    }

    private static void enumOrdinal() {
        System.out.println("----------------------start of enumOrdinal()----------------------\n");

        // ask in which position vanilla is, because we cannot read the sign in the language they are written
        System.out.println("-Excuse me, which flavour is Vanilla?");

        // position of vanilla's container, as displayed in front of us
        int vanillaIndex = IceCreamFlavour.VANILLA.ordinal();

        // vendor's response
        switch (vanillaIndex) {
            case 0:
                System.out.println("-It's the first one!");
                break;
            case 1:
                System.out.println("-It's the second one!");
                break;
            case 2:
                System.out.println("-It's the third one!");
                break;
            case 3:
                System.out.println("-It's the fourth one!");
                break;
            default:
                break;
        }

        System.out.println("\n-----------------------end of enumOrdinal()-----------------------\n");
    }

    public static void main(String[] args) {
        enumConstructor();

        enumIfStatements();

        enumSwitchStatements();

        enumLoopWithValues();

        enumValueOf();

        enumOrdinal();
    }
}
