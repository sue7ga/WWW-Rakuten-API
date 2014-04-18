use strict;
use warnings;
use utf8;
use Encode;
use WWW::Rakuten::API;
use WWW::Rakuten::API::Category::AuctionGenreKeyword;

use Test::More;
use Test::Deep;

use Data::Dumper;

my $rakuten = WWW::Rakuten::API->new(appid => '3766475e74cb414b34384f5034546640');

my $content = $rakuten->execute('AuctionGenreKeyword',{keyword=>'PC'});

my @fullGenrePaths = $rakuten->get_fullGenrePath($content);

my @genre;

foreach my $path(@fullGenrePaths){
 my @path = split/>>/,$path;
 push @genre,@path;
}

foreach my $genre(@genre){
 chomp($genre);
 print Encode::encode_utf8($genre),"\n";
}



