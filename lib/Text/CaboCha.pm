package Text::CaboCha;
use 5.008001;
use strict;
use warnings;

our @ISA;
our $VERSION = "0.01";

use XSLoader;
XSLoader::load(__PACKAGE__, $VERSION);

sub new {
    my $self = shift;
    hello();
}

1;
__END__

=encoding utf-8

=head1 NAME

Text::CaboCha - It's new $module

=head1 SYNOPSIS

    use Text::CaboCha;

=head1 DESCRIPTION

Text::CaboCha is ...

=head1 LICENSE

Copyright (C) K.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

K E<lt>x00.x7f@gmail.comE<gt>

=cut

