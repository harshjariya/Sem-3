import java.util.Scanner;

public class Smallarge {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the array size : ");
        int size = sc.nextInt();
        int[] array = new int[size];
        int max = 0;
        int min = 0;

        for (int i = 0; i < size; i++) {
            System.out.println("Enter array element " + (i + 1) + ":");
            array[i] = sc.nextInt();

        }
        for (int i = 1; i < size; i++) {
            if (array[i] > array[max]) {
                max = i;
            }
            if (array[i] < array[min]) {
                min = 1;
            }
        }
        System.out.println("Smallest number is : " + array[(min)]);
        System.out.println("Largest number is : " + array[(max)]);
    }

}
