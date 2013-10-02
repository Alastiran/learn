#!/usr/bin/env perl
use Data::Dumper;
use IO::Socket;

#$| = (@ARGV > 0);

print "Descriptor for STDIN " . fileno(STDIN) . "\n";

print "Now you don't see it...";

my $socket = IO::Socket::INET->new(
    LocalPort => 5000,
    Type      => SOCK_STREAM,
    Proto     => 'tcp',
    ReuseAddr => 1,
    Listen    => 10,
);

my $sender = IO::Socket::INET->new(
    PeerAddr => 'localhost',
    PeerPort => 5000,
    Type     => SOCK_STREAM,
    Proto    => 'tcp'
);
#print $sender "just testing";


#open (my $fh, "> writing.out");
#print($fh "descriptor for STDOUT " . fileno(STDOUT) . "\n");
print "What is file for socket? " . fileno($socket) ." \n";
print "what is file for sender? " . fileno($sender) . "\n";

$rin = $win = $ein;
vec($win, fileno(STDOUT), 1) = 1;
vec($win, fileno($sender), 1) = 1;
print unpack("b*", $win), "\n";

vec($rin, fileno($socket), 1) = 1;
print unpack("b*", $rin), "\n";

my $nFound = select($rout=$rin, $wout=$win, $eout=$ein, undef);

print "looking at wout \n";
print unpack("b*", $wout), "\n";

print "looking at rout  \n";
print unpack("b*", $rout), "\n";

print "found how many? $nFound \n";

my $client = $socket->accept();
vec($rin, fileno($client), 1) = 1;
my $nFound = select($rout=$rin, $wout=$win, $eout=$ein, undef);
if(vec($rout, fileno($client), 1)) {
    sysread($client, $input, 2048);
    print $input . "\n";
}


print "looking at wout \n";
print unpack("b*", $wout), "\n";

print "looking at rout  \n";
print unpack("b*", $rout), "\n";

print "found how many? $nFound \n";
