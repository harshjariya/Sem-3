import java.util.Scanner;

public class Lab_4_A_26 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the size of the first array:");
        int n1 = sc.nextInt();
        int[] array1 = new int[n1];
        System.out.println("Enter the size of the second array:");
        int n2 = sc.nextInt();
        int[] array2 = new int[n2];
        for (int i = 0; i < n1; i++) {
            System.out.println("Enter the element " + (i + 1) + " of the first array:");
            array1[i] = sc.nextInt();
        }
        for (int i = 0; i < n2; i++) {
            System.out.println("Enter the element " + (i + 1) + " of the second array:");
            array2[i] = sc.nextInt();
        }

        int[] array3 = new int[n1 + n2];

        for (int i = 0; i < n1; i++) {
            array3[i] = array1[i];
        }
        for (int i = 0; i < n2; i++) {
            array3[i + n1] = array2[i];
        }
        for (int i = 0; i < n1 + n2; i++) {
            System.out.println("element:" + i + 1);
            System.out.println(array3[i]);
        }
    }
}