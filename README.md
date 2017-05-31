# NAME

Text::CaboCha - Alternate Interface To libcabocha

# SYNOPSIS

    use Text::CaboCha;
    my $cabocha = Text::CaboCha->new({
        output-format => $output_format,
        input-layer   => $input_layer,
        output-layer  => $output-layer,
        ne            => $ne,
        parser-model  => $parser_model_file,
        chunker-model => $chunker_model_file,
        ne-model      => $ne_tagger_model_file,
        posset        => $posset,
        charset       => $encode,
        charset-file  => $charset_file,
        rcfile        => $cabocha_rc_file,
        mecabrc       => $mecab_rc_file,
        mecab-dicdir  => $mecab_dicdir,
        mecab-userdic => $mecab_userdic,
        output        => $output_file
    });

    my tree = $cabocha->parse($text);
    $tree->tostr(Text::CaboCha::CABOCHA_FORMAT_TREE); # You can check the tree.

    my $token_size = $tree->token_size;

    my $cid = 0;
    for (my $i = 0; $i < $token_size; $i++) {
        my $token = $tree->token($i);
        if ($token->chunk) {
            printf("* %d %dD %d/%d %f\n",
                $cid++,
                $token->chunk->link,
                $token->chunk->head_pos,
                $token->chunk->func_pos,
                $token->chunk->score);
            printf("%s\t%s\t%s\n",
                    $token->surface,
                    $token->feature,
                    $token->ne ? $token->ne : "O");
        }
    }
    printf("EOS\n");

    # use constants
    use Text::CaboCha qw(:all);
    use Text::CaboCha qw(CABOCHA_FORMAT_TREE);
    # check what cabocha version we compiled against?
    print "Compiled with ", Text::CaboCha::CABOCHA_VERSION, "\n";

# DESCRIPTION

This module was created with reference to Text::MeCab.  
Text::CaboCha gives you a more natural, Perl-ish way to access libcabocha!

# METHODS

## new HASHREF | LIST
Creates a new Text::CaboCha instance.
You can either specify a hashref and use named parameters, or you can use the
exact command line arguments that the cabocha command accepts.
Below is the list of accepted named options. See the man page for cabocha for 
details about each option.

- **output-format**
- **input-layer**
- **output-layer**
- **ne**
- **parser-model**
- **chunker-model**
- **ne-model**
- **posset**
- **charset**
- **charset-file**
- **rcfile**
- **mecabrc**
- **mecab-dicdir**
- **mecab-userdic**
- **output**

## $tree = $parser->parse(SCALAR)
Parses the given text via CaboCha::Parser, and returns a Text::CaboCha::Tree object.

## $version = Text::CaboCha::version()
The version number, as returned by libcabocha's CaboCha::Parser::version()

## CONSTANTS

- ENCODING

        my $encoding = Text::CaboCha::ENCODING

    Returns the encoding of the underlying cabocha library that was detected at
    compile time.

- CABOCHA\_VERSION

    The version number, same as Text::CaboCha::version().

- CABOCHA\_TARGET\_VERSION

    The version number detected at compile time of Text::CaboCha. 

- CABOCHA\_TARGET\_MAJOR\_VERSION

    The version number detected at compile time of Text::CaboCha. 

- CABOCHA\_TARGET\_MINOR\_VERSION

    The version number detected at compile time of Text::CaboCha. 

- CABOCHA\_CONFIG

    Path to cabocha-config, if available.

- CABOCHA\_FORMAT\_TREE
- CABOCHA\_FORMAT\_LATTICE
- CABOCHA\_FORMAT\_TREE\_LATTICE
- CABOCHA\_FORMAT\_XML
- CABOCHA\_FORMAT\_CONLL
- CABOCHA\_FORMAT\_NONE

# SEE ALSO
https://taku910.github.io/cabocha/

# LICENSE

Copyright (C) Kei Kamikawa.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.
See http://www.perl.com/perl/misc/Artistic.html

# AUTHOR

Kei Kamikawa <x00.x7f@gmail.com>
[@codehex](https://twitter.com/CodeHex)
