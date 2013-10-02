#!usr/bin/perl
use feature 'say';
use strict;
use warnings;

open my $fh, "<:utf8", "input";

while (defined(my $line = <$fh>)) {
    chomp $line;
    print "$line \n";
}

sub rock {
    print "im rock";

    given (my $compete = shift @_) {
        when ($compete =~ m/paper/) { "you win, hater" };
    }
}

say '終わり';
