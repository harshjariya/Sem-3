import java.util.Scanner;

public class Armstrong {
    public static void main(String[] args) {

        System.out.println("Armstrong number from 1 to 1000 : ");
        for (int i = 0; i <= 1000; i++) {
            int num = i;
            int sum = 0;
            int rem = 0;
            while (num != 0) {
                rem = num % 10;
                sum = sum + (rem * rem * rem);
                num = num / 10;
            }
            if (sum == num) {
                System.out.println(i + " ,");
            }
        }

    }
}