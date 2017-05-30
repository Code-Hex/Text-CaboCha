use strict;
use Test::More;
BEGIN { use_ok("Text::CaboCha") }

my $cabocha = Text::CaboCha->new(ne => 1);
ok($cabocha);

done_testing;