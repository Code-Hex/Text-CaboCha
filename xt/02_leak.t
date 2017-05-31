use strict;
use Test::More;
BEGIN {
    if (!$ENV{TEST_LEAKTRACE}) {
        plan skip_all => "\$ENV{TEST_LEAKTRACE} is not set";
    }
    eval { require Test::LeakTrace };
    if ($@) {
        plan skip_all => 'Test::LeakTrace require for this test';
    }
}

while ( my $f = <t/*.t> ) {
    no_leaks_ok {
         do $f;
    }, "Detected memory leak via $f";
}

done_testing;