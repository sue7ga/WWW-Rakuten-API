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

foreach my $item(@{$content->{Items}}){
  foreach my $key(keys %{$item}){
    my @keys = keys $item->{$key};    
    print "@keys";
    print map{ $_ ,"=>", $item->{$key}->{$_} ,"\n"}@keys;
  }
}






