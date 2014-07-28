use v5.10;
BEGIN {
	$Exporter::Verbose = 1;
}
use lib qw(j_lib);
use Bestiary.pm;#'; #qw(camel $weight);

say "Animal is ", camel(), " has weight $weight";

say $Bestiary::VERSION;
