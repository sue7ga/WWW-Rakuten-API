package WWW::Rakuten::API::Category::Common;
use strict;
use warnings;
use utf8;

use constant BASEURL => 'https://app.rakuten.co.jp/services/api';

sub call{
 my($class,$category,$appid,$subapi) = @_;
 my $content = BALSEURL.$subapi;
 return $content;
}


1;

