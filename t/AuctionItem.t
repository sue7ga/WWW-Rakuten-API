use strict;
use warnings;
use utf8;
use Encode;
use WWW::Rakuten::API;
use WWW::Rakuten::API::Category::AuctionItem;
use Test::More;
use Test::Deep;

my $rakuten = WWW::Rakuten::API->new(appid => '3766475e74cb414b34384f5034546640');

my $content = $rakuten->execute('AuctionItem',{keyword=>'PC',auctionGenredId=>'0'});

use Data::Dumper;

my $itemlist = 1;

is($content->{count},12513,'count is correct');
is($content->{page},1,'page is correct');
is($content->{first},1,'first is correct');
is($content->{last},30,'last is correct');
is($content->{hits},30,'hits is correct');
is($content->{carrier},0,'carrier is correct');
is($content->{pageCount},100,'pageCount is correct');

foreach my $item(@{$content->{Items}}){
  foreach my $key(keys %{$item}){
    #print $itemlist ,"個の商品リスト表示","\n";
    my @keys = keys $item->{$key};    
    #print map{ $_ ,"=>", $item->{$key}->{$_} ,"\n"}@keys;
    $itemlist++;
  }
}






