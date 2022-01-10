public class JavaClassesRobotMainExampleClass {
    public static void main(String[] args) {
        Robot myRobot = new Robot("Atlas", Robot.RobotColors.WHITE, Robot.RobotLanguages.GREEK);
        myRobot.introduce();
        myRobot.calculate(4, -5, Robot.RobotOperations.MULTIPLY);

        System.out.println();
        
        myRobot.setLanguage(Robot.RobotLanguages.SPANISH);
        myRobot.introduce();
        myRobot.calculate(10, 300, Robot.RobotOperations.ADD);

        System.out.println();

        myRobot.setLanguage(Robot.RobotLanguages.ENGLISH);
        myRobot.introduce();
        myRobot.calculate(8, 2, Robot.RobotOperations.DIVIDE);
    }
}
