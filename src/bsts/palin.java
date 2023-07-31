package bsts;

import java.util.*;

public class palin {

    public static boolean isPal(int n){
        int r=0;
        while(n>0){
            r <<=1;
            r|=(n&1);
            r>>=1;
        }
        return r== n;
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        if(isPal(n)){
            System.out.println(n+" is pal");
        }else{
            System.out.println("not pal "+n);
        }
    }
}
