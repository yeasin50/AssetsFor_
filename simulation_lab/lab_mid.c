#include <stdio.h>
/// question 3
int main()
{
    int a;
    scanf("%d", &a);
    int count = 0;
    while (a > 0)
    {
        a = a / 10;
        count++;
    }
    printf(" NUmber of %d\n", count);
}

#include <stdio.h>
/// question 2
int main()
{
    int A, B, C, D;
    scanf("%d", &A);
    scanf("%d", &B);
    scanf("%d", &C);
    scanf("%d", &D);

    float result = A * B - C * D;

    printf("DIFERENCE = %d\n", result);
}

#include <stdio.h>
/// question 1
int main()
{

    int A, B;
    scanf("%d", &A);
    scanf("%d", &B);
    int X = A + B;
    printf("X = %d\n", X);
}
