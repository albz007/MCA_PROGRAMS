import java.util.*;
public class ptrn1 {
    ;
    public static void main(String args[]){
        int count;
        Scanner sc=new Scanner(System.in);
        System.out.println("enter the count");{
            count = Integer.parseInt(sc.nextLine());
        }
        for(int i=0;i<count;i++){
            for(int j=0;j<count;j++){
                System.out.print("* ");
            }
            System.out.println();
        }
        sc.close();
    }
    
}

/*
output
enter the count
5
* * * * *
* * * * *
* * * * *
* * * * *
* * * * *
*/