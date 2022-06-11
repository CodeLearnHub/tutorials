import java.text.DecimalFormat;

public class Example2_4 {
    public static void main(String[] args)
    {
        int n = 214232;
        DecimalFormat numberFormat = new DecimalFormat("###,###");
        String str = numberFormat.format(n);
        System.out.println("The string version of 214232 is: " + str);
    }
}
