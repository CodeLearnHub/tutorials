

public class Example1 {
    public static void main(String args[]){
        try {
            String s = "30";
            Integer i = Integer.valueOf(s);
            System.out.println(i);
        }
        catch (NumberFormatException ex){
            ex.printStackTrace();
        }

    }
}



