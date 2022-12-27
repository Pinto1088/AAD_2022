 //Implement a Parallel ODD-Even Sort algorithm using GPU or ARM equivalent or OPENMP
 //Implement a Parallel ODD-Even Sort algorithm using GPU 

// oddeven.c
#include<stdio.h>
#include<omp.h>

main()
{
  int A[25];
  int N,i;
  printf("\n\t Enter number of elements in array : ");
  scanf("%d",&N);
 
  //Accept array elements
  printf("\n\t Enter Array elements : ");
  for(i=0;i<N;i++)
  {
     printf("\n\t Enter the element[%d] : ",i);
     scanf("%d",&A[i]);
  }

  //Display array elements
  printf("\n\t Array elements : ");
  for(i=0;i<N;i++)
  {
    printf("%d  ",A[i]);
  }

 
  int exch=1, start=0;
  int temp;
  printf("\n Array before Sorting-: ");
  for(i=0;i<N;i++)
  {
     printf("\n %d",A[i]);
  }
  while(exch||start)
  {
      exch=0;
       #pragma omp parallel for private(temp) shared(start,exch)
      for(i=start;i<N-1;i+=2)
      {
         printf("\n%d=\t A[%d]= %d\tA[%d]= %d",i,i,A[i],i+1,A[i+1]);
        if(A[i]>A[i+1])
        {
          temp=A[i];
          A[i]=A[i+1];
          A[i+1]=temp;
          exch=1;
        }
      }
      if(start==0)
      {
        start=1;
      }
      else
      {
        start=0;
      }
  }
    printf("\n Sorted array is-: ");
    for(i=0;i<N;i++)
    {
      printf("\n %d",A[i]);
    }
}
/*
shri@shri-System-Product-Name:~$ gcc ODDEVEN.c
shri@shri-System-Product-Name:~$ ./a.out

	 Enter number of elements in array : 10

	 Enter Array elements : 
	 Enter the element[0] : 10

	 Enter the element[1] : 9

	 Enter the element[2] : 8

	 Enter the element[3] : 7

	 Enter the element[4] : 6

	 Enter the element[5] : 5

	 Enter the element[6] : 4

	 Enter the element[7] : 3

	 Enter the element[8] : 2

	 Enter the element[9] : 1

	 Array elements : 10  9  8  7  6  5  4  3  2  1  
 Array before Sorting-: 
 10
 9
 8
 7
 6
 5
 4
 3
 2
 1
0=	 A[0]= 10	A[1]= 9
2=	 A[2]= 8	A[3]= 7
4=	 A[4]= 6	A[5]= 5
6=	 A[6]= 4	A[7]= 3
8=	 A[8]= 2	A[9]= 1
1=	 A[1]= 10	A[2]= 7
3=	 A[3]= 8	A[4]= 5
5=	 A[5]= 6	A[6]= 3
7=	 A[7]= 4	A[8]= 1
0=	 A[0]= 9	A[1]= 7
2=	 A[2]= 10	A[3]= 5
4=	 A[4]= 8	A[5]= 3
6=	 A[6]= 6	A[7]= 1
8=	 A[8]= 4	A[9]= 2
1=	 A[1]= 9	A[2]= 5
3=	 A[3]= 10	A[4]= 3
5=	 A[5]= 8	A[6]= 1
7=	 A[7]= 6	A[8]= 2
0=	 A[0]= 7	A[1]= 5
2=	 A[2]= 9	A[3]= 3
4=	 A[4]= 10	A[5]= 1
6=	 A[6]= 8	A[7]= 2
8=	 A[8]= 6	A[9]= 4
1=	 A[1]= 7	A[2]= 3
3=	 A[3]= 9	A[4]= 1
5=	 A[5]= 10	A[6]= 2
7=	 A[7]= 8	A[8]= 4
0=	 A[0]= 5	A[1]= 3
2=	 A[2]= 7	A[3]= 1
4=	 A[4]= 9	A[5]= 2
6=	 A[6]= 10	A[7]= 4
8=	 A[8]= 8	A[9]= 6
1=	 A[1]= 5	A[2]= 1
3=	 A[3]= 7	A[4]= 2
5=	 A[5]= 9	A[6]= 4
7=	 A[7]= 10	A[8]= 6
0=	 A[0]= 3	A[1]= 1
2=	 A[2]= 5	A[3]= 2
4=	 A[4]= 7	A[5]= 4
6=	 A[6]= 9	A[7]= 6
8=	 A[8]= 10	A[9]= 8
1=	 A[1]= 3	A[2]= 2
3=	 A[3]= 5	A[4]= 4
5=	 A[5]= 7	A[6]= 6
7=	 A[7]= 9	A[8]= 8
0=	 A[0]= 1	A[1]= 2
2=	 A[2]= 3	A[3]= 4
4=	 A[4]= 5	A[5]= 6
6=	 A[6]= 7	A[7]= 8
8=	 A[8]= 9	A[9]= 10
1=	 A[1]= 2	A[2]= 3
3=	 A[3]= 4	A[4]= 5
5=	 A[5]= 6	A[6]= 7
7=	 A[7]= 8	A[8]= 9
 Sorted array is-: 
 1
 2
 3
 4
 5
 6
 7
 8
 9
 10
shri@shri-System-Product-Name:~$ 
*/

