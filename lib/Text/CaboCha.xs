#ifdef __cplusplus
extern "C" {
#endif

#define PERL_NO_GET_CONTEXT /* we want efficiency */
#include <EXTERN.h>
#include <perl.h>
#include <XSUB.h>

#ifdef __cplusplus
} /* extern "C" */
#endif

#define NEED_newSVpvn_flags
#include "text-cabocha.h"

MODULE = Text::CaboCha    PACKAGE = Text::CaboCha

PROTOTYPES: DISABLE

void
hello()
CODE:
{
    Hello();
    ST(0) = newSVpvs_flags("Hello, world!", SVs_TEMP);
}
