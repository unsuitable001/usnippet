// Here, using fraction 312689 / 99532
// "The fraction 355/113 is incredibly close to pi, within a third of a millionth of the exact value." - http://davidbau.com
// can also use 22/7

//PIproximate - by unsuitable001
// Who the heck am I? - read on github repo
// https://github.com/unsuitable001/usnippet/blob/master/PIproximate.md
#include<stdio.h>
int main()
{
    FILE *out = fopen("PI", "a");
    setvbuf(out, NULL, _IONBF, 0);
    int div = 312689,r, rem;
    r = div / 99532;
    rem = div % 99532;
    fprintf(out,"%d.",r);

    while(rem != 0){
        
        div = rem * 10;
        r = div / 99532;
        rem = div % 99532;
        fprintf(out,"%d",r);
    }
    fclose(out);
    return 0;
}
