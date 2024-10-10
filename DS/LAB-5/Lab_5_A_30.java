import java.util.Scanner;

public class Lab_5_A_30 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter row : ");
        int r = sc.nextInt();
        System.out.print("Enter coloum : ");
        int c = sc.nextInt();
        System.out.println("Enter element of first matrix1 : ");
        int[][] matrix1 = new int[r][c];
        for (int i = 0; i < r; i++) {
            for (int j = 0; j < c; j++) {
                System.out.print("Enter element of first matrix1:[" + i + "][" + j + "] : ");
                matrix1[i][j] = sc.nextInt();
            }

        }
        System.out.println("Enter element of second matrix2 : ");
        int[][] matrix2 = new int[r][c];
        for (int i = 0; i < r; i++) {
            for (int j = 0; j < c; j++) {
                System.out.print("Enter element of second matrix2:[" + i + "][" + j + "] : ");
                matrix2[i][j] = sc.nextInt();
            }

        }
        System.out.println("Sum of two matrix is ");
        int SumOfMatrix[][] = new int[r][c];
        for (int i = 0; i < r; i++) {
            for (int j = 0; j < c; j++) {
                SumOfMatrix[i][j] = matrix1[i][j] + matrix2[i][j];
            }
        }

        for (int i = 0; i < r; i++) {
            for (int j = 0; j < c; j++) {
                System.out.print("[" + SumOfMatrix[i][j] + "]" + " ");
            }
            System.out.println();
        }

    }
}
