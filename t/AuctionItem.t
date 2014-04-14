use strict;
use warnings;
use utf8;
use Encode;
use WWW::Rakuten::API;
use WWW::Rakuten::API::Category::AuctionItem;

use Test::More;
use Test::Deep;

is(WWW::Rakuten::API::Category::AuctionItem->get_package_lastmethod,'AuctionItem','method');

