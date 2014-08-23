BEGIN {
#	$Exporter::Verbose = 1;
}
use strict;
use warnings;
use lib qw(j_lib);
use JustinObj v1.5.2;
use Data::Dumper;
use feature qw(say);

my $new_pen;
eval {
	$new_pen = j_lib::JustinObj->new();
};
if ($@) {
	#no strict 'refs';
	#no warnings 'redefine';
	#party = 'heyheyhey';
	#print "error caught: $@";
	#require j_lib::JustinObj;
	$new_pen = JustinObj->new();
}


print Dumper $new_pen;
{
	no warnings 'redefine';
	no strict 'refs';
	my $class = 'JustinObj';
	my $sub = 'length';
	*{"${class}::${sub}"} = sub { "actually a giant lie! \n" };
}

say "pen has length: " . $new_pen->length;

$new_pen->length(25);

say "pen has new length: " . $new_pen->length;

$new_pen->color('red');

print Dumper $new_pen;

say "pen has color: " . $new_pen->color('blue');

say $j_lib::JustinObj::VERSION;

say $new_pen->entry;

say $new_pen->declare;

$new_pen->style = 'sleek';

print Dumper $new_pen;

say $new_pen->style;

say "current circulation JustinObj's : ". $new_pen->circulation;

{
	my $newer_pen = JustinObj->new(length => 20);
	say "after creating even newer pen: " . $newer_pen->circulation;
}

say " left scope of newest pen, what is count now? " . $new_pen->circulation;

say "Can jobj color?";
say Dumper $new_pen->can('color');

