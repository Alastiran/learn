use strict;
use warnings;
use Time::HiRes qw(gettimeofday);
use feature qw(say);

my $t0 = gettimeofday;
say "what time is it? " . "not yet!";

my $t1 = gettimeofday;

my $td = $t1 - $t0;

say "time difference is $td";

