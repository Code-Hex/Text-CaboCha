use strict;
use Test::More;
BEGIN { use_ok("Text::CaboCha") }

can_ok("Text::CaboCha", qw/new parse/);

done_testing;