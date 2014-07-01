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

sub california {
	say "california is tech";
}

california();

