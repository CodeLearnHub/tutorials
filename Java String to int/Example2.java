public class Example2 {

        public static void main(String args[]){
            try {
                String s = "30";
                int i = Integer.parseInt(s);
                System.out.println(i);
            }
            catch (NumberFormatException ex){
                ex.printStackTrace();
            }
        }
    }


