#!perl

while (1) {
	print calc(5);
}

sub calc {
	return $_[0] + 10;
}
