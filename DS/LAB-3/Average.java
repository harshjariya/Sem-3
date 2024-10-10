import java.util.Scanner;

public class Average {
    public static void main(String[] args) {
        System.out.print("Enter a number : ");
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        double avg = 0;
        for (int i = 1; i <= n; i++) {
            avg = avg + i;
        }
        avg = avg / n;
        System.out.println("Average is : " + avg);
    }

}
