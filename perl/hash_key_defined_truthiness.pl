#!/usr/bin/perl
use strict;
use warnings;

my %hash1 = (
	steve => 'bartel',
	andrew => 'carnegie',
	coffee => undef,
);

print "coffee returns defined" if defined ($hash1{coffee});
