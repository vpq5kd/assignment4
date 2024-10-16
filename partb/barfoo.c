#include <stdio.h>
#include <stdlib.h>


int barfoo(int x , int y )
{ int a[100] ;
unsigned long _2_foobar_next ;
{
{ _2_foobar_next = 8; }
while (1) {
switch (_2_foobar_next) {
case 8:
x = 20;
{ _2_foobar_next = 6; }
break;
case 6: ;
if(x >= 10) {
{ _2_foobar_next = 4; }
} else {
{ _2_foobar_next = 1; }
}
break;
case 4:
x --;
a[x] = 10;
{ _2_foobar_next = 3; }
break;
case 3: ;
if(x == 4){
{ _2_foobar_next = 2; }
} else
{ { _2_foobar_next = 6; } }
break;
case 2:
x -= 2;
{ _2_foobar_next = 6; }
break;
case 1:
x += 5;
{ _2_foobar_next = 0; }
break;
case 0: ;
return (x);
break;
}
} } }

int main(){
	for (int i = 0; i<10; i++){
	printf("%d,", barfoo(i,i));
	}
	return 0;

}
