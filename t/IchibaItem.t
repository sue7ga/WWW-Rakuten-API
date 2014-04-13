use strict;
use warnings;
use utf8;
use Encode;
use WWW::Rakuten::API;
use Test::More;
use Test::Deep;

my $rakuten = WWW::Rakuten::API->new(appid => '3766475e74cb414b34384f5034546640');

my $content = $rakuten->execute('IchibaItem',{keyword=>'楽天',genreId=>559887,shopCode=>'rakuten24'});

is($content->{count},1,'count is ok');
is($content->{hits},1,'hits is ok');
is($content->{page},1,'page is ok');
is($content->{first},1,'first is ok');
is($content->{last},1,'last is ok');
is($content->{carrier},0,'carrier is ok');
is($content->{pageCount},1,'page is ok');
is_deeply(
   $content->{Items},
[
  height => 0.4,
  weight => 6.0,
  type   => ['Grass','Steel'],
]  
);



done_testing;