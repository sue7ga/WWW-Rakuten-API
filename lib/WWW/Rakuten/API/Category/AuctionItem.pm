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

use constant era => '20130110';

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
 my $baseurl = WWW::Rakuten::API::Category::Common::BASEURL;
 my $category_url = $baseurl."/$category/Search/".era;
 my $url = URI->new($category_url);
 $url->query_form(
   format => 'json',
   keyword => $parameter->{keyword},
   auctionGenreId => $parameter->{auctionGenredId},
   applicationId => $appid,
 );
 my $ua = LWP::UserAgent->new;
 my $res = $ua->get($url);
 return decode_json($res->{_content});
}

1;
