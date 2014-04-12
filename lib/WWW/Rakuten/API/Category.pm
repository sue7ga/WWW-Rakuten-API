package WWW::Rakuten::API::Category;
use strict;
use warnings;
use WWW::Rakuten::API::Category::IchibaItem;

sub dispatch{
 my($self,$appid,$category,$parameter) = @_;
 my $class = __PACKAGE__.'::'.ucfirst($category);
 $class->call($appid,$parameter);
}

1;
