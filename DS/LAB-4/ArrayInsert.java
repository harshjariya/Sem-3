import java.util.Scanner;

public class ArrayInsert {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter size of Array : ");
        int size = sc.nextInt();
        int array[] = new int[size];
        for (int i = 0; i < size; i++) {
            System.out.println("Enter array element " + (i + 1) + ":");
            array[i] = sc.nextInt();
        }
        System.out.println("Enter the number to be inserted : ");
        int num = sc.nextInt();
        System.out.println("Enter the position where you want to insert the number : ");
        int index = sc.nextInt();
        int newArray[] = new int[size + 1];
        for (int i = 0; i < index - 1; i++) {
            newArray[i] = array[i];
        }

        newArray[index - 1] = num;
        
        for (int i = index; i < size + 1; i++) {
            newArray[i] = array[i - 1];
        }
        for (int i = 0; i < newArray.length; i++) {
            System.out.println("New array is" + newArray[i]);
        }
    }
}