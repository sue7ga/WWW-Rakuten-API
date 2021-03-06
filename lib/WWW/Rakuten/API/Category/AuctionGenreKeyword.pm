package WWW::Rakuten::API::Category::AuctionGenreKeyword;
use strict;
use warnings;
use utf8;
use Carp;
use FindBin;
use JSON;
use WWW::Rakuten::API::Category::Common;
use WWW::Rakuten::API::Category::AuctionItem qw/get_package_lastmethod/;

use constant era => '20120927';

use parent qw/Exporter/;
our @EXPORT_OK = qw/get_auctionGenreList/;

sub call{
 my($call,$appid,$parameter) = @_;
 my $category = 'AuctionGenreKeyword';
 my $baseurl = WWW::Rakuten::API::Category::Common::BASEURL;
 my $category_url = $baseurl."/$category/Search/".era;
 my $url = URI->new($category_url);
 $url->query_form(
   format => 'json',
   keyword => $parameter->{keyword},
   applicationId => $appid,
 );
 my $ua = LWP::UserAgent->new;
 my $res = $ua->get($url);
 return decode_json($res->{_content});
}

sub get_auctionGenreList{

}

1;
