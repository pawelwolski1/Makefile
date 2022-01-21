/** @file hw_main.c
  * Plik g��wny programu
  * $Id$
  */

#include "hw_defs.h"
#include "hw_hello.h"
#include "hw_power.h"

/**
 * G��wna funkcja programu
 * @param argc liczba argument�w wywo�ania
 * @param argv lista argument�w wywo�ania
 * @returns rezultat pracy, ew. numer b��du
 */
int main (int argc, char *argv[])
{
    int r;

    r = hello();
    r = calc_pow3(4);

    return r;
}
