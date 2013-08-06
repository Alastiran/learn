#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my $game_ids = +{};

print "steve \n" if (ref($game_ids) eq "ARRAY" && scalar(@$game_ids) > 0);


#my $id_ref = [ 5, 7, 9];

#my @id_array = $id_ref;
#@id_array = (3, 9, 2);

#my $size = scalar(@id_array);

#print "size of id_array is $size \n";
#print Dumper(\@id_array);
#for my $item (@{$id_array[0]}) {
#	print "$item \n";
#}


#my @array_still = ( 2, 7, 11);
#my $new_ref = @array_still;


#print Dumper($new_ref);

my @test_array = ();
my $test_ref = [];
push(@$test_ref, @test_array);
push(@$test_ref, +{ hello => 1});
print "well it's the first item \n" if (ref(@$test_ref[0]) eq "ARRAY");
print Dumper(@$test_ref[0]);





