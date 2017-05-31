use strict;
use Test::More;
BEGIN {
    if (!$ENV{TEST_MEMLEAK}) {
        plan skip_all => "\$ENV{TEST_MEMLEAK} is not set";
    }
}
use Test::Requires 'Test::Valgrind';

while ( my $f = <t/*.t> ) {
    subtest $f => sub { do $f };
}

done_testing;