#!/usr/bin/perl
#

sub j_sub {
	my ($what, $where, $howmuch) = @_;

	unpack("x$where a$howmuch", $what);
}

my $test_string = "this is a test string for justin yo";

my $new_sub = j_sub($test_string, 5, 9);

print "$new_sub \n";

my $s = pack('H2', 30..39);

print "$s\n";

my $ps = pack('s',20302);
print "$ps\n";

my $answer = unpack('s',$ps);
print "$answer\n";
