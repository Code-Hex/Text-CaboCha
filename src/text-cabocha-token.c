#include "text-cabocha.h"
#ifndef  __TEXT_CABOCHA_TOKEN_C__
#define  __TEXT_CABOCHA_TOKEN_C__

const char *
TextCaboCha_Token_surface(TextCaboCha_Token *token)
{
    return CABOCHA_TOKEN_SURFACE(token);
}

const char *
TextCaboCha_Token_normalized_surface(TextCaboCha_Token *token)
{
    return CABOCHA_TOKEN_NORMALIZED_SURFACE(token);
}

const char *
TextCaboCha_Token_feature(TextCaboCha_Token *token)
{
    return CABOCHA_TOKEN_FEATURE(token);
}

const char **
TextCaboCha_Token_feature_list(TextCaboCha_Token *token)
{
    return CABOCHA_TOKEN_FEATURE_LIST(token);
}

unsigned short
TextCaboCha_Token_feature_list_size(TextCaboCha_Token *token)
{
    return CABOCHA_TOKEN_FEATURE_LIST_SIZE(token);
}

const char *
TextCaboCha_Token_ne(TextCaboCha_Token *token)
{
    return CABOCHA_TOKEN_NE(token);
}

const char *
TextCaboCha_Token_additional_info(TextCaboCha_Token *token)
{
    return CABOCHA_TOKEN_ADDITIONAL_INFO(token);
}

TextCaboCha_Chunk *
TextCaboCha_Token_chunk(TextCaboCha_Token *token)
{
    return CABOCHA_TOKEN_CHUNK(token);
}

#endif /* __TEXT_CABOCHA_TOKEN_C__ */