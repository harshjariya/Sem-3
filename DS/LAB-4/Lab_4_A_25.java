import java.util.Scanner;

public class Lab_4_A_25{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the array  size as you want :");
        int size = sc.nextInt();
        int[] array = new int[size];
        int Duplicate = 0;
        for (int i = 0; i < size; i++) {
            System.out.print("enter array element " + (i + 1) + ":");
            array[i] = sc.nextInt();
        }
        for (int i = 0; i < size; i++) {
            for (int j = i + 1; j < size; j++) {
                if (array[i] == array[j]) {
                    Duplicate = i;
                    break;
                }
            }
        }

        int index = Duplicate;
        int newarray[] = new int[size - 1];
        
        for (int i = 0; i < index; i++) {
            newarray[i] = array[i];
        }

        for (int i = index; i < array.length - 1; i++) {
            newarray[i] = array[i + 1];
        }

        for (int i = 0; i < newarray.length; i++) {
            System.out.println("new array after insering" + (i + 1) + ":" + newarray[i]);
        }

    }
}
