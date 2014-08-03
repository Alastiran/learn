package Bestiary 1.001;
use parent qw(Exporter Dictionary);

our @EXPORT = qw(camel $weight); #symbols to export by default
our @EXPORT_OK = qw($weight); #symbols to export on request
#our @EXPORT_FAIL = qw(crocodile);

sub import {
	$Bestiary::zoo = 'mengaerie';
	Bestiary->export_to_level(1, @_);
}

sub camel { "one-hump dromedary" }

$weight = 1024;

sub crocodile { 'yo, im mad dangerous' }

1; #end with expression that evals to true
