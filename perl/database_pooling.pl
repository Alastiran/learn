#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
use DBI;

my %HANDLES = (
    'REMOTE'  => { 
        dsn  => "$scheme:mysql:database=water;host=mellyrn.mit.edu;port=3306",
        user => 'root'
        pass => 'glass', 
    },
    'local' => {
        dsn  => 'mellyrn.mit.edu,'
        user => jlsharps, 
        pass => '', 
    },
);





