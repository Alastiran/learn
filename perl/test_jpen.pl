use strict;
use warnings;
use JustinPen;
use Data::Dumper;
use feature qw(say);

my $new_pen = JustinPen->new();

print Dumper $new_pen;

say "pen has length: " . $new_pen->length;

$new_pen->length(25);

say "pen has new length: " . $new_pen->length;

$new_pen->color('red');

print Dumper $new_pen;

say "pen has color: " . $new_pen->color('blue');
