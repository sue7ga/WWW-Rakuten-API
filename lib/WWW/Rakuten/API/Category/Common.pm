package WWW::Rakuten::API::Category::Common;
use strict;
use warnings;
use utf8;

use constant BASEURL => 'https://app.rakuten.co.jp/services/api';

sub call{
 my($class,$category,$era,$parameter) = @_;
 my $basic_url = BASEURL.'/'.$category.'/Search/$era';
 return $parameter;
 my $url = URL->new($basic_url);
}


1;


