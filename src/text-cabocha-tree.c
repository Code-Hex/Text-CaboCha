#include "text-cabocha.h"
#ifndef  __TEXT_CABOCHA_TREE_C__
#define  __TEXT_CABOCHA_TREE_C__

size_t
TextCaboCha_Tree_size(TextCaboCha_Tree *tree)
{
    return tree->size();
}

size_t
TextCaboCha_Tree_token_size(TextCaboCha_Tree *tree)
{
    return tree->token_size();
}

const TextCaboCha_Token *
TextCaboCha_Tree_token(TextCaboCha_Tree *tree, size_t size)
{
    return tree->token(size);
}

size_t
TextCaboCha_Tree_chunk_size(TextCaboCha_Tree *tree)
{
    return tree->chunk_size();
}

const TextCaboCha_Chunk *
TextCaboCha_Tree_chunk(TextCaboCha_Tree *tree, size_t size)
{
    return tree->chunk(size);
}

const char *
TextCaboCha_Tree_tostr(TextCaboCha_Tree *tree, unsigned int format)
{
    return tree->toString(static_cast<CaboCha::FormatType>(format));
}

#endif /* __TEXT_CABOCHA_TREE_C__ */