#! perl
#use strict;
use warnings;
use feature qw(say);
use Data::Dumper;

sub europe {
	say "europe is old";
}

europe();
{
	no strict;
	$main::europe = 'old country';
}

print Dumper $main::{'|'};
#my $steve = 1;
#my $bob = 5;
#my %test = (steve => $steve, bob => $bob);
#print Dumper \%test;

*scandinavia = $main::{paris};
print Dumper \%main::;
print Dumper \*main::europe;

#for my $symname (sort keys %main::) {
#	local *sym = $main::{$symname};
#	print "\$$symname is defined\n" if defined $sym;
#	print "\@$symname is nonull \n" if  @sym;
#	print "\%$symname is nonnull\n" if %sym;
#	print "\&$symname is nonull\n" if  %sym;
#}

#for my $symname (sort keys %main::) {
#}

print Dumper *main::europe{ARRAY};
{
	my $code_ref = *main::europe{SCALAR};
	print Dumper $code_ref;
}

#print Dumper @main::{"@"};
package America;

sub states {
	say "There are 50 states in america";
}

package America::California;

say "what is package? " . __PACKAGE__;

sub name {
	say "california";
}

package main;

{
	$package_name = "America";

	$symbol_table_ref = "${package_name}";

	$test_1 = "this is the output you want to see";
	$test_2 = "test_1";
	no strict 'refs';

#	print Dumper $$test_2;
	print Dumper $symbol_table_ref;
	print Dumper \%main::;
	print Dumper \*{$package_name};
}

#california();

