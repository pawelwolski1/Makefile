/** @file hw_power.c
  * Plik funkcji wypisuj�cych wyniki operacji mat
  * $Id$
  */

#include <stdio.h>
#include <math.h>
#include "hw_defs.h"

/**
 * Funkcja wylicza i wypisuje 3. pot�g� danej liczby
 * @param   n liczba kt�rej pot�g� nale�y wyliczy�
 * @returns   rezultat pracy, ew. numer b��du
 */
int calc_pow3 (int n)
{
    printf("calc_pow3(v%d): \t%d ^ 3 to jest %.2f\n",
	   WERSJA, n, (float)n*(float)n*(float)n);
    printf("COS NIE DZIALA");

    return 0;
}
