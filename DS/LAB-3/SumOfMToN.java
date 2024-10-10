import java.util.Scanner;

public class SumOfMToN {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter m :");
        int m = sc.nextInt();
        System.out.print("Enter n :");
        int n = sc.nextInt();
        int sum = 0;
        for (int i = m; i <= n; i++) {
            sum = sum + i;
        }
        for (int i = m; i <= n; i++) {
            System.out.println("sum is" + sum);
        }
    }
}
