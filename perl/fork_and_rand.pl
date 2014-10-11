#!perl
use strict;
use warnings;
use feature qw(say);

say "from the parent before fork";
say rand();

my $new_pid;
for (my $i = 0; $i < 5; $i++) {
	$new_pid = fork();
	srand();
}
if ($new_pid) {
	sleep(2);
	say "parent after fork";
	say rand;
	say "parent done";
} else {
	say "A child process";
	say rand;
	say "child process done";
}
