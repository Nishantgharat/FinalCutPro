#include<stdio.h>
int main()
{
char a[100],b[100],c[100],f[100],g[100],h[100];
int i,n=0,j;
printf("Enter the grammar in the form S=aSbc|aSit \n");
gets(a);
i=2;
j=0;
while(a[i]!='|')
{
b[j]=a[i];
i++;
j++;
}
b[j]='\0';
i++;
while(a[i]!='\0')
{
c[n]=a[i];
n++;
i++;
}
c[n]='\0';
i=0;
while(b[i]==c[i])
 {f[i]=b[i];
 i++;
 }
 f[i]='\0';
 n=0;
 j=i;
 while(b[i]!='\0')
 { g[n]=b[i];
 n++;
 i++;
 }
 g[n]='\0';
 n=0;
 while(c[j]!='\0')
 { h[n]=c[j];
 n++;
 j++;
 }
 h[n]='\0';
printf("S-%sS’\n",f);
printf("S’-%s/%s/e\n",g,h);
}
