package Scanner_Methods;

import java.util.Scanner;

public class Methods {
        public static void main(String[] args) {
            Scanner sc = new Scanner(System. in );
            System.out.println("Taking inputs from user");

            System.out.println("Enter the name of the Employee:");
            String name = sc.nextLine();

            System.out.println("Are you a male?");
            Boolean gender = sc.nextBoolean();

            System.out.println("Do you like your Job?(Y/N)");
            char job = sc.next().charAt(0);

            System.out.println("Enter age:");
            int age = sc.nextInt();

            System.out.println("Enter mobile number:");
            long mobileNo = sc.nextLong();

            System.out.println("Enter salary");
            double salary = sc.nextDouble();


            System.out.println("Name: " + name);
            System.out.println("Gender: " + gender);
            System.out.println("Job: " + job);
            System.out.println("Age: " + age);
            System.out.println("Mobile Number: " + mobileNo);
            System.out.println("Salary: " + salary);
        }
}
