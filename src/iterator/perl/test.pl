#!/usr/bin/perl
#@author: 0xnz
#@update: Sat Sep 28 13:00:30 CST 2013

# In Perl any built-in or user defined object which can be walked
# has a method which returns an ordered list of the items to be walked. 

use strict;
use warnings;

my %hashtbl = ("100" => "world",
	"101" => "good",
	"102" => "bye",
);
foreach my $key(keys %hashtbl) {
	print "$key\t$hashtbl{$key}\n";
}
