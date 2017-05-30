#include "text-cabocha.h"
#ifndef  __TEXT_CABOCHA_TREE_C__
#define  __TEXT_CABOCHA_TREE_C__

size_t
TextCaboCha_Tree_size(TextCaboCha_Tree *tree)
{
    return cabocha_tree_size(tree);
}

size_t
TextCaboCha_Tree_token_size(TextCaboCha_Tree *tree)
{
    return cabocha_tree_token_size(tree);
}

TextCaboCha_Token const *
TextCaboCha_Tree_token(TextCaboCha_Tree *tree, size_t size)
{
    return cabocha_tree_token(tree, size);
}

size_t
TextCaboCha_Tree_chunk_size(TextCaboCha_Tree *tree)
{
    return cabocha_tree_chunk_size(tree);
}

TextCaboCha_Chunk const *
TextCaboCha_Tree_chunk(TextCaboCha_Tree *tree, size_t size)
{
    return cabocha_tree_chunk(tree, size);
}

const char *
TextCaboCha_Tree_tostr(TextCaboCha_Tree *tree, unsigned int format)
{
    return cabocha_tree_tostr(tree, format);
}

#endif /* __TEXT_CABOCHA_TREE_C__ */