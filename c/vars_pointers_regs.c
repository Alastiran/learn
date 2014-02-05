#include <stdio.h>

int j, k;
int *ptr; //now, still just a 'null pointer'

int main(void)
{
    j = 1;
    k = 2;
    ptr = &k;
    printf("\n");
    printf("j has the value %d and is stored at %p\n", j, (void *)&j);
    printf("k has the value %d and is stoted at %p\n", k, (void *)&k);
    printf("ptr has the bvalue %p and is sroted at %p\n", ptr, (void *)&ptr);
    printf("the value of the integer pointed to by ptr is %d\n", *ptr);
//    printf("Whats a double deference of ptr look like %d\n", (void*)*ptr);
//    k = 2; // k is an 'object'
 //   j = 7;
  //  k = j;

   // printf("k is %d, j is %d \n", k, j);

//    ptr = &k;

//    int *ptr_j;
//    ptr_j = j;
 //   printf("k's pointer: %d, j's pointer %d", *ptr, *ptr_j);
}

