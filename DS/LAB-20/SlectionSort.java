import java.util.Scanner;

public class SlectionSort {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a size of array :");
        int n = sc.nextInt();
        int arr[] = new int[n];
        System.out.println("enter a element of array :");
        for(int i=0;i<n;i++){
            System.out.println("enter"+(i+1)+"element of array :");
            arr[i] = sc.nextInt();
        }
        for(int i=0;i<n-1;i++){
            int minindex=i;
            for(int j=i+1;j<n;j++){
                if(arr[j]<arr[minindex]){
                    minindex = j;
                }
            }
            if(minindex!=i){
                int temp = arr[i];
                arr[i] = arr[minindex];
                arr[minindex] = temp;
            }
        }
        for(int i=0;i<n;i++){
            System.out.print(arr[i]+",");
        }
    }
}