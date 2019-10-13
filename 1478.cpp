
// Still got some error
#include<stdio.h>

 int n;
void Display(int *arr){
    for(int i=0;i<n;i++){
    for(int j=0; j<n; j++){
    if(j==0)printf("%d",*((arr+i*n)+j));
    else printf("   %d",*((arr+i*n)+j));
    }

    printf("\n");
    }

}
int main()
{

    do{
    scanf("%d", &n);

    int arr[n][n], p,q;
    int val;

    for(int i=0; i<n; i++){
         val=i+1;
        for(int j=0; j<n; j++){
            if(i==j){
                arr[i][j]=1;
                val=2;
            }
            else
                arr[i][j]=val++ ;
        }
    }
    Display(*arr);
    }while(n!=0);



return 0;
}
