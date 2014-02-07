#!/usr/bin/perl

use strict;
use warnings;

my $home = "" // $ENV{HOME} // $ENV{LOGDIR} // die "You're homeless\n";

print "$home \n";

my $empty = "";
(defined($empty)) ? print "empty is defined\n" : print "empty is not defined \n";
$empty ? print "empty is true \n" : print "empty is not true \n";
