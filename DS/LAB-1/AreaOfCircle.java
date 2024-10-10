import java.util.Scanner;

public class AreaOfCircle{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a radius : ");
        double r = sc.nextDouble();
        double ans = Math.PI * r * r;
        System.out.println("Radius is : " + ans);

    }
}