#!/usr/bin/env perl

use strict;
use warnings;
use IO::Socket;
use IO::Select;
use Data::Dumper;
use HTTP::Request;
use HTTP::Cookies;
use LWP::UserAgent;

my $cookie_jar = HTTP::Cookies->new(
    file     => "$ENV{'HOME'}/lwp_cookies.dat",
    autosave => 1,
);
my $ua = LWP::UserAgent->new(
    agent => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36',
    timeout => 5,
#    cookie_jar => $cookie_jar,
);
$| = 1;

my $select = IO::Select->new();

my $sock = new IO::Socket::INET->new(
#    LocalHost => 'localhost',
    Type    => SOCK_STREAM,
    LocalPort => '5000',
    Proto => 'tcp',
    Listen  => 10,
    ReuseAddr   => 1,
);

$select->add($sock);

die "couldn't create socket: $!\n" unless $sock;
while (my $client = $sock->accept()) {

    my $input;
    sysread($client, $input, 2048);
    print "in place of the input, this string\n";

    my $req = HTTP::Response->parse($input);
    print Dumper $req;

    print $req->as_string;

    my $res = $ua->request($req);
    print $res->as_string;

    next;
}

close($sock);

