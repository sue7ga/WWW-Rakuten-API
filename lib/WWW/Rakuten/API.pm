package WWW::Rakuten::API;
use strict;
use warnings;
use 5.008005;
use WWW::Rakuten::API::Category;

our $VERSION = "0.01";

sub new{
 my($class,%opt) = @_;
 my $self = {
   appid => $opt{appid},
 };
 bless $self,$class;
 $self;
}

sub appid{
 my $self = shift;
 return $self->{appid};
}

sub execute{
 my($self,$category,$parameter) = @_;
 my $class = __PACKAGE__.'::'.'Category';
 my $appid = $self->appid;
 $class->dispatch($appid,$category,$parameter);
}

sub get_auctionGenreList{
 my($self,$content) = @_;
 my @auctionGenreIds = map{$_->{auctionGenreId}}@{$content->{auctionGenreList}};
 return @auctionGenreIds;
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

