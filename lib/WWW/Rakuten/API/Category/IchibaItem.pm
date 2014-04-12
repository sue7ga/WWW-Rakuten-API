package WWW::Rakuten::API::Category::IchibaItem;
use strict;
use warnings;
use utf8;
use URI::Escape;
use Carp;
use FindBin;
use lib "$FindBin::Bin/../../../../lib";
use WWW::Rakuten::API::Category::Common;

sub call{
 my($class,$appid,$parameter) = @_;
 my $category = 'IchibaItem';
 #keyword,genreId,itemCode,shopCodeのフォーマットチェック
 my $keyword  = $parameter->{keyword};
 my $genreId  = $parameter->{genreId};
 my $itemCode = $parameter->{itemCode};
 my $shopCode = $parameter->{shopCode};
 my @parameter;
 #keywordをURLencode
 $keyword = uri_escape($keyword);
 if(defined $keyword){
   push @parameter,"keyword=$keyword";
 }
 if(defined $genreId){
   push @parameter,"genreId=$genreId";
 }
 if(defined $itemCode){
   push @parameter,"itemCode=$itemCode";
 } 
 if(defined $shopCode){
   push @parameter,"shopCode=$shopCode";
 }
 push @parameter,"applicationId=$appid";
 my $subapi = join('&',@parameter);
 my $content = WWW::Rakuten::API::Category::Common->call(
   $category,
   $subapi,
 );
 return $content;
}

sub all{

}

sub item{

}

1;
