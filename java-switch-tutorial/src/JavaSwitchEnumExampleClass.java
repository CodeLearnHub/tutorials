public class JavaSwitchEnumExampleClass {
    enum LanguagesDimitrisCanSayThankYou {
        GREEK, ENGLISH, SPANISH, ITALIAN, GERMAN, FRENCH, LITHUANIAN, TURKISH, JAPANESE
    }

    public static void main(String[] args) {
        System.out.println("Dimitris can say \"thank you\" in the following languages\n");
        for(LanguagesDimitrisCanSayThankYou language : LanguagesDimitrisCanSayThankYou.values()) {
            sayThankYou(language);
        }
    }

    private static void sayThankYou(LanguagesDimitrisCanSayThankYou language) {
        // let's say thank you in various languages, by combining a switch and en enum

        switch(language) {
            case GREEK:
                System.out.println("In Greek we say \"Ευχαριστώ\"");
                break;
            case ENGLISH:
                System.out.println("In English we say \"Thank you\"");
                break;
            case SPANISH:
                System.out.println("In Spanish we say \"Gracias\"");
                break;
            case ITALIAN:
                System.out.println("In Italian we say \"Grazie\"");
                break;
            case GERMAN:
                System.out.println("In German we say \"Danke\"");
                break;
            case FRENCH:
                System.out.println("In French we say \"Merci\"");
                break;
            case LITHUANIAN:
                System.out.println("In Lithuanian we say \"Ačiū\"");
                break;
            case TURKISH:
                System.out.println("In Turkish we say \"Teşekkürler\"");
                break;
            case JAPANESE:
                System.out.println("In Japanese we say \"ありがとう\"");
                break;
        }
    }
}
