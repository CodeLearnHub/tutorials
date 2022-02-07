public class InstanceOfExample {
    public static void main(String[] args) {

        InstanceOfExample ex1 = new InstanceOfExample();
        System.out.println(ex1 instanceof InstanceOfExample);
        InstanceOfExample ex2 = null;
        System.out.println(ex2 instanceof InstanceOfExample);
    }
}
