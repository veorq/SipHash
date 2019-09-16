#include <stddef.h>
#include <stdint.h>


int halfsiphash(const unsigned char *in, const size_t inlen, const unsigned char *k,
                unsigned char *out, const size_t outlen);
