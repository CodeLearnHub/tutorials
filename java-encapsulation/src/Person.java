import java.time.LocalDate;

public class Person {
    private String fullName; // has get/set methods
    private int age; // has only get method -> read-only field
    private LocalDate birthdate; // has only set method -> write-only field

    // we mention that the constructor might throw an IllegalArgumentException if the birthdate is after today's date
    Person(String fullName, LocalDate birthdate) throws IllegalArgumentException{
        this.fullName = fullName;
        this.setBirthdate(birthdate);
    }

    Person() { }

    // this method can throw an exception, if the birthdate is after today's date
    public void setBirthdate(LocalDate birthdate) throws IllegalArgumentException {
        LocalDate todayDate = LocalDate.now();

        if(birthdate.isAfter(todayDate) || birthdate.isEqual(todayDate)) {
            throw new IllegalArgumentException("Birthdate cannot be later than today's date");
        } else {
            this.birthdate = birthdate;
            this.age = birthdate.until(todayDate).getYears(); // we set the age, if the birthdate is correct
        }
    }

    // get the age
    public int getAge() {
        return age;
    }

    // this method uses the write-only field to calculate an operation. The full birthdate is inaccessible otherwise
    public boolean isBornInSummer() {
        return this.birthdate.getMonthValue() == 6 || this.birthdate.getMonthValue() == 7 || this.birthdate.getMonthValue() == 8;
    }

    // get the full name of the person
    public String getFullName() {
        return fullName;
    }

    // set the full name of the person
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
}

class PersonExample {
    public static void main(String[] args) {
        personLegalBirthdate();

        System.out.println();

        personIlLegalBirthdate();
    }

    private static void personLegalBirthdate() {
        try {
            Person thePerson = new Person();
            thePerson.setFullName("John Smith");
            thePerson.setBirthdate(LocalDate.of(1990,8,2));

            System.out.println(thePerson.getFullName() + " is " + thePerson.getAge() + " years old.");

            if(thePerson.isBornInSummer()) {
                System.out.println(thePerson.getFullName() + " is born in summer");
            } else {
                System.out.println(thePerson.getFullName() + " is not born in summer");
            }
        } catch(IllegalArgumentException e) {
            System.err.println(e);
        }
    }

    private static void personIlLegalBirthdate() {
        try {
            Person thePerson = new Person("Steve Lopez", LocalDate.of(2100,1,13));
            System.out.println(thePerson.getFullName() + " is " + thePerson.getAge() + " years old.");

            if(thePerson.isBornInSummer()) {
                System.out.println(thePerson.getFullName() + " is born in summer");
            } else {
                System.out.println(thePerson.getFullName() + " is not born in summer");
            }
        } catch(IllegalArgumentException e) {
            System.err.println(e);
        }
    }
}
