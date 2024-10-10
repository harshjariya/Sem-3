import java.util.Scanner;

class Node{
    int info;
    Node link;
    public Node(int data) {
        this.info = data;
        this.link = null;
    }
}

class MethodForCopy {
    Node first;
    public void add(int data) {
        Node newNode = new Node(data);
        if(first == null) {
            first = newNode;
            return;
        }
        Node temp = first;
        while(temp.link != null) {
            temp = temp.link;
        }
        temp.link = newNode;
    }

    public void copyList() {
        if(first == null) {
            return;
        }
        MethodForCopy copiedList = new MethodForCopy();
        Node save = first;
        Node copiedSave = null;
        while(save != null) {
            Node newNode = new Node(save.info);
            if(copiedList.first == null) {
                copiedList.first = newNode;
                copiedSave = newNode;
            }
            else {
                copiedSave.link = newNode;
                copiedSave = newNode;
            }
            save = save.link;
        }
    }
    public void display() {
        Node temp = first;
        while(temp != null) {
            System.out.print(temp.info+"-");
            temp = temp.link;
        }
    }
}
public class CopyLinkedList {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        MethodForCopy CL = new MethodForCopy();
        System.out.println("Enter size of the list: ");
        int n = sc.nextInt();
        for(int i=0;i<n;i++) {
            System.out.println("Enter value for index "+i+": ");
            int data = sc.nextInt();
            CL.add(data);
        }
        CL.copyList();
        System.out.println("Copied list:");
        CL.display();
    }
}