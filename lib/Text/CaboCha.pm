package Text::CaboCha;
use 5.008001;
use strict;
use warnings;

our @ISA;
our $VERSION = "0.01";

use XSLoader;
XSLoader::load(__PACKAGE__, $VERSION);

my %BOOLEAN_OPTIONS = (
    map { $_ => 'bool' } qw/--version --help/
);

sub new {
    my $class = shift;
    my %args = ref $_[0] eq 'HASH' ? %{$_[0]} : @_;

    my @args = ('perl-TextCaboCha');
    while (my ($key, $value) = each %args) {
        $key =~ s/_/-/g;
        $key =~ s/^/--/;

        if (exists $BOOLEAN_OPTIONS{$key}) {
            push @args, $key;
        } else {
            push @args, join('=', $key, $value);
        }
    }

    $class->_xs_create(\@args);
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

