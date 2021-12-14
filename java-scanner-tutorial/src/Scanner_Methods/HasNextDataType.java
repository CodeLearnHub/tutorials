package Scanner_Methods;

import java.util.Scanner;

public class HasNextDataType {
        public static void main(String[] args) {

            System.out.println("Enter the numbers and any character other than an integer:");
            Scanner sc = new Scanner(System. in );
            int sum=0;

            while (sc.hasNextInt()) {
                int num = sc.nextInt();
                sum += num;
            }
            System.out.println("The sum of the numbers is: " + sum);
        }
    }

