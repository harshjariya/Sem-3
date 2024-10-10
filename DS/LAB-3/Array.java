import java.util.Scanner;

public class Array {
    public static void main(String[] args) {
        System.out.println("Enter array size : ");
        Scanner sc = new Scanner(System.in);
        int size = sc.nextInt();
        int[] array = new int[size];
        for (int i = 0; i < size; i++) {
            System.out.print("Enter a array element : ");
            array[i] = sc.nextInt();
        }
        for (int i = 0; i < size; i++) {
            System.out.println(array[i]);
        }

    }
}
