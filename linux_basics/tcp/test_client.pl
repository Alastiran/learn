#!/usr/bin/env perl
#
use strict;
use warnings;
use IO::Socket;
my $sock = new IO::Socket::INET->new(
    PeerAddr    => 'localhost',
    PeerPort    => 5000,
    Proto => 'tcp',
    Type => SOCK_STREAM,
);

die "couldn't do client connection $!\n" if not $sock;

print $sock "hello socket world!\n";

#my $answer = <$sock>;

close($sock);
