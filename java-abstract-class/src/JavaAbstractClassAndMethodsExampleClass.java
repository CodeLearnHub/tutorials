abstract class Animal {

    // The total number of animals that exist across all usages of Animal abstract class
    private static int animalsBorn = 0;

    // Whenever a new child class is created, the counter of Animal increases by one
    Animal() {
        System.out.println("A new animal is born.");
        animalsBorn++;
    }

    // the sound an animal can make that's different between animals
    abstract void talk();

    // regular method, common to all animals
    public void run() {
        System.out.println("Running like the wind!");
    }

    // getter for animalsBorn, unrelated to a specific animal (belongs to the class not the object, therefore static)
    public static final int getTotalAnimalsBornNumber() {
        return animalsBorn;
    }
}

class Dog extends Animal {
    @Override
    void talk() {
        System.out.println("The dog goes woof-woof!");
    }
}

class Cat extends Animal {
    @Override
    void talk() {
        System.out.println("The cat goes meowww!");
    }
}

abstract class Pig extends Animal {
}

class JavaAbstractClassAndMethodsExampleClass {
    public static void main(String[] args) {

        Animal animal = new Dog(); // same as Dog newDog = new Dog();
        animal.talk();
        animal.run();

        System.out.println();

        animal = new Cat(); // same as Cat newCat = new Cat();
        animal.talk();
        animal.run();

        System.out.println("\nTotal animals: " + Animal.getTotalAnimalsBornNumber());
    }
}
