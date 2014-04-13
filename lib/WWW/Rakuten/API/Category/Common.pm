package WWW::Rakuten::API::Category::Common;
use strict;
use warnings;
use utf8;

use constant BASEURL => 'https://app.rakuten.co.jp/services/api';

sub call{
 my($class,$category,$subapi) = @_;
 my $content = BASEURL.'/'.$category.'/Search/20140222?format=json&'.$subapi;
 return $content;
}

1;


