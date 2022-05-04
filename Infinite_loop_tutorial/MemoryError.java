public class MemoryError {

        public static void main(String args[])
        {
            ArrayList<Object> list = new ArrayList<Object>();

            while(true)
            {
                Object obj = new Object();
                list.add(obj);
            }
        }
    }
