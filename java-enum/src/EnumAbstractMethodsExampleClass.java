public class EnumAbstractMethodsExampleClass {
    enum IceCreamFlavour {

        VANILLA {
            @Override
            void translateToSpanishAndAnnounce() {
                System.out.println("Español: Esto es helado de VAINILLA.");
            }

            @Override
            void announceInEnglish() {
                System.out.println("English: This is VANILLA ice cream.");
            }
        },
        CHOCOLATE {
            @Override
            void translateToSpanishAndAnnounce() {
                System.out.println("Español: Esto es helado de CHOCOLATE.");
            }

            @Override
            void announceInEnglish() {
                System.out.println("English: This is CHOCOLATE ice cream.");
            }
        },
        STRAWBERRY {
            @Override
            void translateToSpanishAndAnnounce() {
                System.out.println("Español: Esto es helado de FRESCA.");
            }

            @Override
            void announceInEnglish() {
                System.out.println("English: This is STRAWBERRY ice cream.");
            }
        },
        BANANA {
            @Override
            void translateToSpanishAndAnnounce() {
                System.out.println("Español: Esto es helado de PLÁTANO.");
            }

            @Override
            void announceInEnglish() {
                System.out.println("English: This is BANANA ice cream.");
            }
        };

        abstract void translateToSpanishAndAnnounce();
        abstract void announceInEnglish();
    }

    private static void enumAbstractMethod() {
        System.out.println("----------------------start of enumAbstractMethod()----------------------\n");

        // announce all flavours in English and Spanish
        for(IceCreamFlavour flavour : IceCreamFlavour.values()) {
            flavour.announceInEnglish();
            flavour.translateToSpanishAndAnnounce();
            System.out.println();
        }

        System.out.println("\n-----------------------end of enumAbstractMethod()-----------------------\n");
    }

    public static void main(String[] args) {
        enumAbstractMethod();
    }
}
