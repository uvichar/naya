package bsts;

public class pr {
    public static void main(String[] args) {
        check(15);

    }
    static void check(int n){
        boolean b[]= new boolean[n+1];
        for(int i=2;i<=n;i++){
            b[i]=true;
        }

        for(int i=2;i*i<=n;i++){
            if(b[i]==true){
                for(int j=i*i;j<=n;j=j+i){
                    b[j]=false;
                }
            }
        }

        for(int i=2;i<=n;i++){
            if(b[i]==true){
                System.out.print(i+" ");
            }
        }

    }

}
