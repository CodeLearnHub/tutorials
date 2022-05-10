import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class SetExample {
        public static void main(String args[]) {

            Set<Integer> set = new HashSet<Integer>();
            set.add(36);
            set.addAll(Arrays.asList(new Integer[]{1, 6, 4, 7, 3, 9, 8, 2, 12, 11, 20}));

            System.out.println("Original Set :" + set);
            System.out.println("Set Size:" + set.size());
            System.out.println("Set contains element 2:" + set.contains(2));
            set.remove(1);
            System.out.println("Original Set :" + set);

            Set<Integer> secondSet = new HashSet<Integer>();

            secondSet.addAll(Arrays.asList(new Integer[]{1, 7, 3, 9, 11, 20}));
            set.removeAll(secondSet);
            System.out.println("Final Set :" + set);
        }
}



