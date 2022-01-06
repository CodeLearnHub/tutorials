// Declared in Robot.java
public class Robot {

    enum RobotLanguages {
        ENGLISH, SPANISH, GREEK
    }

    enum RobotColors {
        BLACK, WHITE, RED, BLUE, GREEN, YELLOW, PURPLE, PINK, ORANGE, BROWN, GRAY
    }

    enum RobotOperations {
        ADD, SUBTRACT, MULTIPLY, DIVIDE
    }

    // fields; the characteristics of a robot
    String name;
    RobotColors color;
    private RobotLanguages language;

    // default constructor if we do not define any other constructors; otherwise we would have to create it on our own
    public Robot() {

    }

    // a custom-made constructor
    public Robot(String name, RobotColors color, RobotLanguages language) {
        this.name = name;
        this.color = color;
        this.language = language;
    }

    public void introduce() {
        switch (this.language) {
            case GREEK:
                System.out.println("Γειά σας! Με λένε "+ name +" και έχω " + this.translateColor() + " χρώμα.\nΜιλάω " + this.translateLanguage() + ".");
                break;
            case ENGLISH:
                System.out.println("Hello there! My name is "+ name +" and my color is " + this.translateColor() + ".\nI speak " + this.translateLanguage() + ".");
                break;
            case SPANISH:
                System.out.println("Hola! Me llamo "+ name +" y soy " + this.translateColor() + ".\nHablo " + this.translateLanguage() + ".");
                break;
        }
    }

    private String translateColor() {
        String translatedColor = this.color.toString();

        switch (this.color) {
            case RED:
                switch (this.language) {
                    case GREEK:
                        translatedColor = "κόκκινο";
                        break;
                    case ENGLISH:
                        translatedColor = "red";
                        break;
                    case SPANISH:
                        translatedColor = "rojo";
                        break;
                }
                break;
            case BLUE:
                switch (this.language) {
                    case GREEK:
                        translatedColor = "μπλε";
                        break;
                    case ENGLISH:
                        translatedColor = "blue";
                        break;
                    case SPANISH:
                        translatedColor = "azul";
                        break;
                }
                break;
            case GRAY:
                switch (this.language) {
                    case GREEK:
                        translatedColor = "γκρι";
                        break;
                    case ENGLISH:
                        translatedColor = "gray";
                        break;
                    case SPANISH:
                        translatedColor = "gris";
                        break;
                }
                break;
            case PINK:
                switch (this.language) {
                    case GREEK:
                        translatedColor = "ροζ";
                        break;
                    case ENGLISH:
                        translatedColor = "pink";
                        break;
                    case SPANISH:
                        translatedColor = "rosado";
                        break;
                }
                break;
            case BLACK:
                switch (this.language) {
                    case GREEK:
                        translatedColor = "μαύρο";
                        break;
                    case ENGLISH:
                        translatedColor = "black";
                        break;
                    case SPANISH:
                        translatedColor = "negro";
                        break;
                }
                break;
            case BROWN:
                switch (this.language) {
                    case GREEK:
                        translatedColor = "καφέ";
                        break;
                    case ENGLISH:
                        translatedColor = "brown";
                        break;
                    case SPANISH:
                        translatedColor = "marrón";
                        break;
                }
                break;
            case GREEN:
                switch (this.language) {
                    case GREEK:
                        translatedColor = "πράσινο";
                        break;
                    case ENGLISH:
                        translatedColor = "green";
                        break;
                    case SPANISH:
                        translatedColor = "verde";
                        break;
                }
                break;
            case WHITE:
                switch (this.language) {
                    case GREEK:
                        translatedColor = "άσπρο";
                        break;
                    case ENGLISH:
                        translatedColor = "white";
                        break;
                    case SPANISH:
                        translatedColor = "blanco";
                        break;
                }
                break;
            case ORANGE:
                switch (this.language) {
                    case GREEK:
                        translatedColor = "πορτοκαλί";
                        break;
                    case ENGLISH:
                        translatedColor = "orange";
                        break;
                    case SPANISH:
                        translatedColor = "naranja";
                        break;
                }
                break;
            case PURPLE:
                switch (this.language) {
                    case GREEK:
                        translatedColor = "μωβ";
                        break;
                    case ENGLISH:
                        translatedColor = "purple";
                        break;
                    case SPANISH:
                        translatedColor = "morado";
                        break;
                }
                break;
            case YELLOW:
                switch (this.language) {
                    case GREEK:
                        translatedColor = "κίτρινο";
                        break;
                    case ENGLISH:
                        translatedColor = "yellow";
                        break;
                    case SPANISH:
                        translatedColor = "amarillo";
                        break;
                }
                break;
        }
        return translatedColor;
    }

    private String translateLanguage() {
        String translatedLanguage = this.language.toString();

        switch (this.language) {
            case GREEK:
                translatedLanguage = "Ελληνικά";
                break;
            case ENGLISH:
                translatedLanguage = "English";
                break;
            case SPANISH:
                translatedLanguage = "Español";
                break;
        }

        return translatedLanguage;
    }

    public void setLanguage(RobotLanguages newLanguage) {
        if(this.language != newLanguage) {
            this.language = newLanguage;
        }
    }

    public void calculate(double operand1, double operand2, RobotOperations operation) {
        double result = 0;

        switch (operation) {
            case ADD:
                result = operand1 + operand2;
                break;
            case SUBTRACT:
                result = operand1 - operand2;
                break;
            case MULTIPLY:
                result = operand1 * operand2;
                break;
            case DIVIDE:
                result = operand1 / operand2;
                break;
        }

        switch (this.language) {
            case GREEK:
                System.out.println("Το αποτέλεσμα είναι " + result);
                break;
            case ENGLISH:
                System.out.println("The result is " + result);
                break;
            case SPANISH:
                System.out.println("El resultado es " + result);
                break;
        }
    }
}