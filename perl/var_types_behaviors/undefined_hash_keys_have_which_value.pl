use strict;
use warnings;
use Data::Dumper;
use Test::More;

my $hash->{hat};

$hash->{water} = "blue";

print Dumper($hash);
is($hash->{hat}, undef, "undef");
is($hash->{hat},'', "empty string");

