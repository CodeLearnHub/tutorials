public class BreakInsideWhileLoop {
    public static void main(String args[]){
        int i=1;
        while(i<=10){
            System.out.println("The program is in the loop in the number: "+i);
            if(i==6){
                System.out.println("The program breaks the loop at number: "+i);
                break;
            }
            i++;
        }

    }
}
