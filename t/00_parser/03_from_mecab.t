use strict;
use Test::More;
use Encode;
use utf8;
BEGIN { use_ok("Text::CaboCha") }
use Test::Requires 'Text::MeCab';

my $data = encode(Text::CaboCha::ENCODING, "太郎は次郎が持っている本を花子に渡した。");
my $mecab = Text::MeCab->new;
my $node = $mecab->parse($data);

my $cabocha = Text::CaboCha->new();
my $tree = $cabocha->parse_from_node($node);

is(ref $tree, 'Text::CaboCha::Tree', "Could not oarse from Text::MeCab::Node");

done_testing;