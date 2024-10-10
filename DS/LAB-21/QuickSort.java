import java.util.Scanner;
public class QuickSort {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int size = sc.nextInt();
        int arr[] = new int[size];
        for (int i = 0; i < size; i++) {
            System.out.println("Enter " + (i + 1) + "  element of array : ");
            arr[i] = sc.nextInt();
        }
       quicksort(arr,0,arr.length-1);

       for(int i=0;i<arr.length;i++){
            System.out.println((i+1)+" element of sorted array :"+ arr[i]);
       }
   
}
        public static void quicksort(int arr[],int lb,int ub){
            if(lb<ub){
            int i = lb;
            int j = ub;
            int key = arr[lb];
            while(i<=j){
                i = i+1;
                while(arr[i]<=key){
                    i = i+1;
                }
                while(arr[j]>key){
                    j = j-1;
                }
                    if(i<=j){
                    int  temp = arr[i];
                        arr[i] = arr[j];
                        arr[j] = temp;
                        i++;
                        j--;
                 }
                  
                
            
            } 
            int temp = arr[lb];
            arr[lb] = arr[j];
            arr[j] = temp;

            quicksort(arr,lb,j-1);
            quicksort(arr,j+1,ub);
        }


}

}