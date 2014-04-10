package WWW::Rakuten::API::Category::IchibaItem;

sub call{
 my($class,$appid,$parameter) = @_;
 my $category = 'IchibaItem';
 my $keyword = $parameter->{keyword};
 my $genreId = $parameter->{genreId};
 my $itemCode = $parameter->{itemCode};
 my $shopCode = $parameter->{shopCode};
 my @parameter;
 push @parameter,$appid;
 push @parameter,$keyword;
 push @parameter,$genreId;
 push @parameter,$itemCode;
 push @parameter,$shopCode;
 my $subapi = join('&',@parameter);
 return $subapi;
 my $content = WWW::Rakuten::API::Category::Common->call(
    $category,
    $appid,
    $subapi
 );
 return $content;
}

sub all{

}

sub item{

}


1;
