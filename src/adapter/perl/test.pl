#!/usr/bin/env perl

use strict;
use warnings;
use Animal::Dog;
use Animal::Cat;
use Adapter;

my $dog = Animal::Dog->new({
		name	=> "puppy",
	});
my $cat = Animal::Cat->new({
		name	=> "mimi",
	});

my @creatures;
push @creatures, Adapter->new({
		subject	=> $dog,
		sound	=> "bark",
	});
push @creatures, Adapter->new({
		subject	=> $cat,
		sound	=> "meow",
	});

$creatures[0]->name("snoopy");

foreach (@creatures) {
	print $_->name, " sounds like ", $_->sound, "\n";
}
