use strict;
use Test::More;

use WWW::Rakuten::API;

my $rakuten = WWW::Rakuten::API->new(appid => '3766475e74cb414b34384f5034546640');

is($rakuten->execute('IchibaItem',{keyword => '楽天',genreId =>559887,shopCode => 'rakuten24'}),'keyword=%E6%A5%BD%E5%A4%A9&genreId=559887&shopCode=rakuten24&applicationId=3766475e74cb414b34384f5034546640','keyword&genreId&shopCode');

my $url = $rakuten->execute('IchibaItem',{keyword => '楽天',genreId =>559887,shopCode => 'rakuten24'});

done_testing;
