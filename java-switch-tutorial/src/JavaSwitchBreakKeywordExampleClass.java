public class JavaSwitchBreakKeywordExampleClass {
    /* One switch statement with 3 cases. We remove the 'break' keyword for each of the 2^3=8 combinations
    *  A triplet like 1-0-1 reads "first case has break, second case hasn't, third case does
    *  so 1 means presence of 'break' and 0 means absence
    * Each digit represents the ordinal of the case, so first digit = first case etc."*/

    public static void main(String[] args) {
        // 1-1-1
        switchAllBreak("Greece");
        switchAllBreak("Spain");
        switchAllBreak("USA");
        System.out.println("\n------------------------------------------------------------------------\n");

        // 1-1-0
        switchTopMiddleBreak("Greece");
        switchTopMiddleBreak("Spain");
        switchTopMiddleBreak("USA");
        System.out.println("\n------------------------------------------------------------------------\n");

        // 1-0-1
        switchTopBottomBreak("Greece");
        switchTopBottomBreak("Spain");
        switchTopBottomBreak("USA");
        System.out.println("\n------------------------------------------------------------------------\n");

        // 1-0-0
        switchTopBreak("Greece");
        switchTopBreak("Spain");
        switchTopBreak("USA");
        System.out.println("\n------------------------------------------------------------------------\n");

        // 0-1-1
        switchMiddleBottomBreak("Greece");
        switchMiddleBottomBreak("Spain");
        switchMiddleBottomBreak("USA");
        System.out.println("\n------------------------------------------------------------------------\n");

        // 0-1-0
        switchMiddleBreak("Greece");
        switchMiddleBreak("Spain");
        switchMiddleBreak("USA");
        System.out.println("\n------------------------------------------------------------------------\n");

        // 0-0-1
        switchBottomBreak("Greece");
        switchBottomBreak("Spain");
        switchBottomBreak("USA");
        System.out.println("\n------------------------------------------------------------------------\n");

        // 0-0-0
        switchNoBreak("Greece");
        switchNoBreak("Spain");
        switchNoBreak("USA");
        System.out.println("\n------------------------------------------------------------------------\n");
    }

    // 1-1-1
    private static void switchAllBreak(String country) {
        System.out.println("------------------------switchAllBreak (1-1-1): " + country);
        switch(country) {
            case "Greece":
                System.out.println("I went to Greece.");
                break;
            case "Spain":
                System.out.println("I went to Spain.");
                break;
            case "USA":
                System.out.println("I went to USA.");
                break;
        }
    }

    // 1-1-0
    private static void switchTopMiddleBreak(String country) {
        System.out.println("------------------------switchTopMiddleBreak (1-1-0): " + country);

        switch(country) {
            case "Greece":
                System.out.println("I went to Greece.");
                break;
            case "Spain":
                System.out.println("I went to Spain.");
                break;
            case "USA":
                System.out.println("I went to USA.");
        }
    }

    // 1-0-1
    private static void switchTopBottomBreak(String country) {
        System.out.println("------------------------switchTopBottomBreak (1-0-1): " + country);

        switch(country) {
            case "Greece":
                System.out.println("I went to Greece.");
                break;
            case "Spain":
                System.out.println("I went to Spain.");
            case "USA":
                System.out.println("I went to USA.");
                break;
        }
    }

    // 1-0-0
    private static void switchTopBreak(String country) {
        System.out.println("------------------------switchTopBreak (1-0-0): " + country);

        switch(country) {
            case "Greece":
                System.out.println("I went to Greece.");
                break;
            case "Spain":
                System.out.println("I went to Spain.");
            case "USA":
                System.out.println("I went to USA.");
        }
    }

    // 0-1-1
    private static void switchMiddleBottomBreak(String country) {
        System.out.println("------------------------switchMiddleBottomBreak (0-1-1): " + country);

        switch(country) {
            case "Greece":
                System.out.println("I went to Greece.");
            case "Spain":
                System.out.println("I went to Spain.");
                break;
            case "USA":
                System.out.println("I went to USA.");
                break;
        }
    }

    // 0-1-0
    private static void switchMiddleBreak(String country) {
        System.out.println("------------------------switchMiddleBreak (0-1-0): " + country);

        switch(country) {
            case "Greece":
                System.out.println("I went to Greece.");
            case "Spain":
                System.out.println("I went to Spain.");
                break;
            case "USA":
                System.out.println("I went to USA.");
        }
    }

    // 0-0-1
    private static void switchBottomBreak(String country) {
        System.out.println("------------------------switchBottomBreak (0-0-1): " + country);

        switch(country) {
            case "Greece":
                System.out.println("I went to Greece.");
            case "Spain":
                System.out.println("I went to Spain.");
            case "USA":
                System.out.println("I went to USA.");
                break;
        }
    }

    // 0-0-0
    private static void switchNoBreak(String country) {
        System.out.println("------------------------switchNoBreak (0-0-0): " + country);
        switch(country) {
            case "Greece":
                System.out.println("I went to Greece.");
            case "Spain":
                System.out.println("I went to Spain.");
            case "USA":
                System.out.println("I went to USA.");
        }
    }
}
