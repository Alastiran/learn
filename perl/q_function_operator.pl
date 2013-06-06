use strict;
use warnings;

my $var = "banana";

my $strings = [
    "testing with double quotes, what is var: $var",
    'testing single quotes what is var: $var',
    q/testing with q quoted string, what is var: $var/,
];

for my $string (@$strings) {
    print $string . "\n";
}


