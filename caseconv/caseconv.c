#include <stdio.h>
#include <string.h>
#include "caseconv.h"

void toUpperCase(char *string)
{
    int i;
    for (i = 0; i < strlen(string); i++)
    {
        if (string[i] > 'Z' && string[i] <= 'z')
        {
            string[i] = string[i] - 32;
        }
    }
}

void toLowerCase(char *string)
{
    int i;
    for (i = 0; i < strlen(string); i++)
    {
        if (string[i] < 'a')
        {
            string[i] = string[i] + 32;
        }
    }
}
