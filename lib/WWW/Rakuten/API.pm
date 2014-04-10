package WWW::Rakuten::API;
use 5.008005;
use strict;
use warnings;

our $VERSION = "0.01";

sub new{
 my($class,%opt) = @_;
 my $self = {
   appid => $opt{appid},
 };
 bless $self,$class;
 $self;
}

sub item{
 my $self = shift;


}


1;
__END__

=encoding utf-8

=head1 NAME

WWW::Rakuten::API - It's new $module

=head1 SYNOPSIS

    use WWW::Rakuten::API;

=head1 DESCRIPTION

WWW::Rakuten::API is ...

=head1 LICENSE

Copyright (C) sue7ga.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

sue7ga E<lt>sue77ga@gmail.comE<gt>

=cut

