#!/usr/bin/perl
use Benchmark qw(:all);

my $hash = +{
	steve => "jobs",
	mark => "madden",
	bill => "gates",
	5020 => "just to switch things up",
	features_underscore => "again, just to confirm",
};



my $using_map = sub {
	my $hash = shift;

	print map { " $_ => $hash{$_}\n" } keys %$hash;
};

my $using_interp = sub {
	my $hash = shift;

	print "@{ [%hash] }\n";
};

timethese( 1_000_000, +{ mapping => $using_map, inter => $using_interp } );


