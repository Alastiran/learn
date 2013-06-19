#!/usr/bin/perl
use File::Basename;
use File::Spec;

print ("what is the value of " . __FILE__ . "\n");
print("what is teh value of that dir? " . dirname(__FILE__). "\n");

print("attach all my stuff to that and see what hapens \n");
my $upload_root_dir = '/var/www/mobafy/static/images';
print( File::Spec->catdir($upload_root_dir));
