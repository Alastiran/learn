use strict;
use warnings;
use URI;
use HTTP::Request;
use Data::Dumper qw(Dumper);
use feature qw(say);

my $params = +{
    udon => 'fat',
    utensils => "chopsticks, bowl, napkin",
    price => 8,
};

my $uri = URI->new("http://testing.com");
$uri->query_form($params);

print $uri . "\n";

my $req = HTTP::Request->new(POST => $uri);

say $req->as_string;


