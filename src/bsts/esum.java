package bsts;

public class esum {
    public static void main(String[] args) {
        int[] arr = {1, 2, 3, 4, 5, 4, 3, 2, 1};
        int maxSum = max(arr);
        System.out.println( maxSum);

    }
    static int max(int arr[]){
        int n=arr.length;
        int max=0;
        int tsum=0;
        int lsum=0;
        for(int i=0;i<n;i++){
            tsum=arr[i]+tsum;
        }
        for(int i=n-1;i>=0;i--){
            tsum=tsum-arr[i];
            if(tsum==lsum&&lsum>max){
                max=lsum;
            }
            lsum=lsum+arr[i];
        }
        return max;
    }
}
