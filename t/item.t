use strict;
use Test::More;

my $rakuten = WWW::Rakuten::API->new(appid => '3766475e74cb414b34384f5034546640');

is($rakuten->execute('IchibaItem',{keyword => 'プログラミング'}),'genreId=559887','parameter');


done_testing;
