package Dictionary v1.0.0;
use parent qw(Exporter);

sub entry {
	my $self = shift;

	my $class = ref $self;
	print "this is dictionary class entry \n";
}
1;
