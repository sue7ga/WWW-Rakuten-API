package WWW::Rakuten::API::Category::AuctionItem;
use strict;
use warnings;
use utf8;
use URI::Escape;
use Carp;
use FindBin;
use JSON;
use WWW::Rakuten::API::Category::Common;
use LWP::UserAgent;

use constant era => '20120927';

sub get_package_lastmethod{
 my $packagename = __PACKAGE__;
 my $last_coron  = rindex($packagename,'::');
 my $sub = substr($packagename,$last_coron);
 $sub =~ s/:://;
 return $sub;
}

sub call{
 my($call,$appid,$parameter) = @_;
 my $category = get_package_lastmethod;
 my $auctionGereId = $parameter->{keyword};
 my $keyword = $parameter->{auctionGenredId};
 my $content = WWW::Rakuten::API::Category::Common->call(
  $category,
 );
 my $ua = LWP::UserAgent->new;
 my $res = $ua->get($content);
 return decode_json($res->{_content});
}

1;
