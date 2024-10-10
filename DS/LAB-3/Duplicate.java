import java.util.Scanner;

public class Duplicate {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter array size : ");
        int size = sc.nextInt();
        int[] array = new int[size];
        int num1 = 0;

        for (int i = 0; i < size; i++) {
            System.out.println("Enter array element " + (i + 1) + ":");
            array[i] = sc.nextInt();
        }
        for (int i = 1; i < size; i++) {
            if (array[i] == array[num1]) {
                num1 = i;
            }
        }
        System.out.println("Duplicate number is : " + array[(num1)]);

    }

}
