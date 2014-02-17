use strict;
use warnings;

use Crypt::CBC;
use Crypt::DES;
use Crypt::DES_EDE3;

use Data::Dumper;

my $cipher = Crypt::CBC->new(
	-key => 'test_key',
	-cipher => 'DES_EDE3',
	-salt => 1,
) || die 'could not create CBC object';

print "ok \n";

print Dumper $cipher;
