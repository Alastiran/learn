use strict;
use warnings;
use Data::Dumper;
use Test::More;

my $result = undef;
my $response = +{ result => $result };

print Dumper $response;

unshift( @{ $response->{result}{entry}}, (2,3) );

print Dumper $response;

