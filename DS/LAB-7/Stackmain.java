class StackDemo{
	int arr[];
	int top=-1;
	int size;
	StackDemo(int size){
		arr = new int[size];
		this.size = size;
	}
	void push(int x){
		if(top>=arr.length-1){
			System.out.println("Stack overflow");
		}
		else{
			top = top+1;
			arr[top]=x;
		}
	}
	int pop(){
		if(top==-1){
			System.out.println("stack is underflow");
			return -1;
		}
		else{
			top = top-1;
			return(arr[top+1]);
		}

	}
	int peep(int index){
		
	}
}


public class Stackmain{
	public static void main(String[] args) {
		
	}
}