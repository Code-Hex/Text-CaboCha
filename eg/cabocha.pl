use strict;
use lib 'lib';
use Text::CaboCha;

printf("** Using cabocha %s **\n\m", Text::CaboCha::CABOCHA_VERSION);
my $text = "太郎は次郎が持っている本を花子に渡した。";

my $cabocha = Text::CaboCha->new;
my $tree = $cabocha->parse($text);

# Print tree
$tree->tostr(Text::CaboCha::CABOCHA_FORMAT_TREE);

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