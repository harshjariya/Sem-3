import java.util.Scanner;
public class EmployeeDetail {
    public static void main(String[] args) {
        
        Employee_Detail e1 = new Employee_Detail();
        e1.employee();
        e1.employeePrint();
       
    }
}
class Employee_Detail{

      String id;
      String name;
      String designation;
      double salary; 

      public void employee(){
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter employee id : ");
        id = sc.next();
        System.out.println("Enter employee name : ");
        name = sc.next();
        System.out.println("Enter employee designation : ");
        designation = sc.next();
        System.out.println("Enter employee salary : ");
        salary = sc.nextInt();
      }
      public void employeePrint(){
        System.out.println("Employee id is : "+id);
        System.out.println("Employee name is : "+name);
        System.out.println("Employee designation is : "+designation);
        System.out.println("Employee salary is : "+salary);
      }

   
}
