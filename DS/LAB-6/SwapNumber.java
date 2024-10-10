import java.util.Scanner;

public class SwapNumber {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Number n1 = new Number();
        System.out.println("Enter number of a : ");
        n1.a = sc.nextInt();
        System.out.println("Enter number of b : ");
        n1.b = sc.nextInt();
        n1.swap();
        System.out.println("A is : " + n1.a);
        System.out.println("B is : " + n1.b);
    }
}

class Number {
    int a;
    int b;

    public void swap() {
        int temp = a;
        a = b;
        b = temp;

    }
}