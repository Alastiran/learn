#!/usr/bin/env perl

use IO::Prompt::Simple qw(prompt);

my $answer = prompt "Say drink here ", {drink => {
        water => 1,
        coffee => 2,
        tea     => 3,
    }};
print "what is answer? $answer \n";
if ($answer) {
    print "he said yes \n";
} else{
    print "he said NO \n";
}
