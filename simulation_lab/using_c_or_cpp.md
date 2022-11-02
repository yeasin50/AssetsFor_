Snippets are randomly placed,

```cpp
#include<bits/stdc++.h>

using namespace std;

int main()
{
    int number;

    cin>> number;

    if(number>= 80)
    {
        cout<<"You got A+"<<endl;
    }
    else if(number>= 75)
    {
        cout<<"You got A"<<endl;
    }
    else if(number>= 70)
    {
        cout<<"You got A-"<<endl;
    }
    else if(number>= 65)
    {
        cout<<"You got B+"<<endl;
    }
    else if(number>= 60)
    {
        cout<<"You got B"<<endl;
    }
    else if(number>= 55)
    {
        cout<<"You got B-"<<endl;
    }
    else if(number>= 50)
    {
        cout<<"You got C+"<<endl;
    }
    else if(number>= 45)
    {
        cout<<"You got C"<<endl;
    }
    else if(number>= 40)
    {
        cout<<"You got C-"<<endl;
    }
    else
    {
        cout<< "You failed"<<endl;
    }

    return 0;
}
```

![image](https://user-images.githubusercontent.com/46500228/198943936-faa48ec0-fd5d-43fa-a880-ce8eba3484b6.png)

```c
#include<stdio.h>

int main()
{
  int id =10885;
  int result = 0;
  
  for(int i = 0; i <= id;i++)
  {
     if(id%2==0 && id%2==0){
         result+=i;
     }else if(id%2==1&& id%2==1) result+=i;
  }
  printf("result  %d", result);

  return 0;
}
```

![image](https://user-images.githubusercontent.com/46500228/198944051-5a22699c-16f8-494f-b1a4-24d77f038873.png)


>Write a program in C to read 10 numbers from keyboard and find their sum and average.


![image](https://user-images.githubusercontent.com/46500228/198944149-c0eaecc3-c1cf-4b49-a313-987f12314091.png)

### Stars 

```c
#include <stdio.h>
int main() {

    for(int i=0; i<6; i++)
    {
        for(int j=0; j<6; j++)
           {
               printf("*");

               }
               printf("\n");
        }

   return 0;
}
```

![image](https://user-images.githubusercontent.com/46500228/198944309-7dc51fd4-3fbd-4e17-8279-cc6df3bae1f9.png)

>Leap year

```
#include <stdio.h>

int main() {

   int year;
   printf("year: ");
   scanf("%d", &year);
   
     if ((year % 4 == 0) && ((year % 400 == 0) || year % 100 != 0)){
          printf("%d is leapYear", year);
     }else{
            printf("%d is not leapYear", year);
     }
   return 0;
}
```

![image](https://user-images.githubusercontent.com/46500228/198944394-519d3230-90ac-4a67-9f31-d3658863473e.png)


### Stars

```
#include <stdio.h>
int main() {

   int n;
   printf("n: ");
   scanf("%d", &n);
 for(int i=0; i<=n; i++)
    {
        for(int j=0; j<i; j++)
           {
            printf("*");
             }
          printf("\n");
        }
   return 0;
}
```

![image](https://user-images.githubusercontent.com/46500228/198944545-0e97c148-a695-4fdf-997c-e3f222eda696.png)

![image](https://user-images.githubusercontent.com/46500228/198944600-b9950302-fe9e-4b32-8c5b-b9f3aa9c8e73.png)

### Number 

```c
#include <stdio.h>

int main() {

   int n;
   printf("n: ");
   scanf("%d", &n);
 for(int i=0; i<=n; i++)
    {
        for(int j=0; j<i; j++)
           {
            printf("%d",i);
             }
          printf("\n");
        }
   return 0;
}
```

![image](https://user-images.githubusercontent.com/46500228/198944654-6cd3a0e1-8061-4919-aca3-eb272ac81668.png)


----

```c
#include <stdio.h>

int main() {

   int n;
   int value = 1;
   printf("n: ");
   scanf("%d", &n);
 for(int i=0; i<=n; i++)
    {
        for(int j=0; j<i; j++)
           {
            printf("%d ",value++);
             }
          printf("\n");
        }
   return 0;
}
```

![image](https://user-images.githubusercontent.com/46500228/198944714-05095e65-6ca6-4e88-ba86-1b905d55a915.png)

----

```c
#include <stdio.h>
#include <math.h>
int main()
{
  float radius, area;


  scanf("%f", &radius);

  area = 3.14159*radius*radius;

  printf("Area of the circle = %.2f\n", area); 

  return 0;
}
```

![image](https://user-images.githubusercontent.com/46500228/198944814-d68cfb28-d660-4f9d-9794-bc54b00c399c.png)

----

```c
#include <stdio.h>
#include <math.h>
int main()
{
  int start, end;


  scanf("%d", &start);
  scanf("%d", &end);
 
 for(int i = start; i<=end; i++){
     long long int r =  pow(i, i*2);
    printf("\ni: %d result: %llu", i,r);
 }
 

  return 0;
}
```

![image](https://user-images.githubusercontent.com/46500228/198944909-3ff01566-9f24-44b4-91df-2afd04e35bfc.png)

![image](https://user-images.githubusercontent.com/46500228/198944972-99afc04b-2d30-4004-a57a-06b08c5ce85d.png)

