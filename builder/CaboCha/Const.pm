package builder::CaboCha::Const;

sub write_files {
    my $class = shift;

    write_config_const($version);
}

sub write_config_const {
    my $class = shift;

    my $contents = config_const_from_enum();

    open my $f, '>', 'src/config-const.h'
        or die "Could not open file: $!";
    print $f $contents;
    close $f;
}

my @const_names = qw(
    CABOCHA_EUC_JP
    CABOCHA_CP932
    CABOCHA_UTF8
    CABOCHA_ASCII

    CABOCHA_IPA
    CABOCHA_JUMAN
    CABOCHA_UNIDIC

    CABOCHA_FORMAT_TREE
    CABOCHA_FORMAT_LATTICE
    CABOCHA_FORMAT_TREE_LATTICE
    CABOCHA_FORMAT_XML
    CABOCHA_FORMAT_CONLL
    CABOCHA_FORMAT_NONE

    CABOCHA_INPUT_RAW_SENTENCE
    CABOCHA_INPUT_POS
    CABOCHA_INPUT_CHUNK
    CABOCHA_INPUT_SELECTION
    CABOCHA_INPUT_DEP

    CABOCHA_OUTPUT_RAW_SENTENCE
    CABOCHA_OUTPUT_POS
    CABOCHA_OUTPUT_CHUNK
    CABOCHA_OUTPUT_SELECTION
    CABOCHA_OUTPUT_DEP

    CABOCHA_TRAIN_NE
    CABOCHA_TRAIN_CHUNK
    CABOCHA_TRAIN_DEP
);

sub config_const_from_enum {
    my $contents = "";

    foreach my $name (@const_names) {
        $contents .= "#define HAVE_$name 1\n";
    }

    return $contents;
}

1;