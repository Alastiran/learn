use strict;
use warnings;
use Data::Dumper;

my %args = (
    limit => 5,
);

print Dumper \%args;

my ($os, $gender, $limit) = @args{qw/os gender limit/};

print Dumper $os;
print Dumper $gender;
print Dumper $limit;

print "os is undef \n" if not defined($os);

my %test_hash = (
    os => $os,
    gender => $gender,
    drink => 'water',
    limit => $limit,
);

print "test_hash{os} is undef \n" if not defined($test_hash{os});

print Dumper \%test_hash;

for my $k (keys %test_hash) {
    print "$k is " . $test_hash{$k} . "\n";
}

