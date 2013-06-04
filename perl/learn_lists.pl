#!/usr/bin/perl
use warnings;

my $gamehash = {};
$gamehash->{cup} = undef;

my $size = (@{$gamehash->{cup}} > 5) ? 1 : 0;


print "size: $size \n";
