#include <iostream>

#include <openssl/evp.h>
#include "fastpbkdf2-master/fastpbkdf2.h"

#define PASSWORD (const void *) "password123", 8
#define SALT (const void *) "saltysalt", 8

static void sha512(uint32_t repeat, uint32_t iterations) {
    uint8_t out[64];

}

int main () {
    return 0;
}