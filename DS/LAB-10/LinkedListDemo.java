import java.util.Scanner;

public class LinkedListDemo {
    class Node {
        int info;
        Node link;

        public Node(int data) {
            this.info = data;
            this.link = null;
        }
    }

    public Node First = null;

    void insertAtFirst(int data) {
        Node newnode = new Node(data);

        if (First == null) {
            First = newnode;
            return;
        }

        newnode.link = First;

        First = newnode;
       
    }

    void insertAtLast(int data) {
        Node newnode = new Node(data);
        while (First == null) {
            First = newnode;
            return;
        }

        Node Save = First;

        while (Save.link != null) {
            Save = Save.link;
        }
        Save.link = newnode;
    }

    void insertAtOrder(int data) {
        Node newnode = new Node(data);
        while (First == null || newnode.info <= First.info) {
            newnode.link = First;
            First = newnode;
            return;
        }
        Node save = First;
        while (save.link != null & newnode.info >= save.link.info) {
            save = save.link;
        }
        newnode.link = save.link;
        save.link = newnode;
    }
    public void deleteNode(int key){
        if(First==null){
            System.out.println("node is empty");
            return;
        }
        Node save=First,pred=null;
        if(save.info==key){
            First=save.link;
            return;
        }
        while (save!=null && save.info!=key) {
            pred=save;
            save=save.link;
        }
        if(save==null){
            System.out.println("NODE NOT FOUND");
            return;
        }
        pred.link=save.link;
    }
    public void display(){
        Node current=First;
        if(First==null){
            System.out.println("linked list null");
        }
        while(current!=null){
            System.out.print(current.info+"-> ");
            current = current.link;
        }
    }


    public static void main(String[] args) {
       LinkedListDemo LLD=new LinkedListDemo();
       LLD.insertAtFirst(55);
       LLD.insertAtFirst(34);
     LLD.insertAtLast(56);
       LLD.insertAtOrder(44);
       LLD.deleteNode(44);
       LLD.display();

    }

}
