use strict;
use warnings;
use utf8;
use Encode;
use Carp;
use FindBin;
use lib "$FindBin::Bin/../lib";
use WWW::Rakuten::API;

my $rakuten = WWW::Rakuten::API->new(appid => '3766475e74cb414b34384f5034546640');

use Data::Dumper;

print Dumper $rakuten->execute('IchibaItem',{keyword=>'プログラミング'});


