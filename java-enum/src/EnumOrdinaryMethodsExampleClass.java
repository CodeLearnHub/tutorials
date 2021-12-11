public class EnumOrdinaryMethodsExampleClass {
    enum IceCreamFlavour {

        // each flavour has an integer representing the number of scoops allowed for each flavour, due to availability
        VANILLA(2),
        CHOCOLATE(3),
        STRAWBERRY(1),
        BANANA(1);

        // declare a variable for each flavour. It's not necessary to be private and/or final.
        private int scoopsOfIceCream;

        // constructor is private by default
        IceCreamFlavour(int scoops) {
            this.scoopsOfIceCream = scoops;
        }

        // announce the flavour and scoops of the enum value. "this" refers to the current enum value
        void announceFlavourAndScoops() {
            System.out.println("For " + this + " flavour, there are " + this.scoopsOfIceCream + " available scoops.");
        }
    }

    private static void enumOrdinaryMethod() {
        System.out.println("----------------------start of enumOrdinaryMethod()----------------------\n");

        IceCreamFlavour[] allFlavours = IceCreamFlavour.values();

        // announce 10 random flavours with random number of scoops each
        for(int i = 0; i < 10; i++) {

            // get a random flavour index
            int flavourIndex = (int) (0 + Math.random() * (4 - 0));

            // get the flavour at the specified index
            IceCreamFlavour chosenFlavour = allFlavours[flavourIndex];

            // get a random number of scoops from 1 to 5
            int numberOfScoops = (int) (1 + Math.random() * (6 - 1));

            // set the number of scoops to the flavour
            chosenFlavour.scoopsOfIceCream = numberOfScoops;

            // announce the result
            chosenFlavour.announceFlavourAndScoops();
        }

        System.out.println("\n-----------------------end of enumOrdinaryMethod()-----------------------\n");
    }

    public static void main(String[] args) {
        enumOrdinaryMethod();
    }
}
