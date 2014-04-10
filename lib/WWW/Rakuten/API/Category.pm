package WWW::Rakuten::API::Category;

use WWW::Rakuten::API::Category::IchibaItem;

use strict;
use warnings;

sub dispatch{
 my($self,$appid,$category,$parameter) = @_;
 my $class = __PACKAGE__.'::'.ucfirst($category);
 $class->call($appid,$parameter);
}

1;
