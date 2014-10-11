#!perl

sub test_proto (&) {
	my ($input_sub) = @_;

	&$input_sub;
}

test_proto {
	print "this is a subroutine";
	print "not a hash \n";
	print "because it's being passed to test_proto\n";
	print "why couldn't this language be more readable? \n";
}
