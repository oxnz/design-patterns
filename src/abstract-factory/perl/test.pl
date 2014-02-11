#!/usr/bin/env perl

use strict;
use warnings;

use Factory::FactoryA;
use Factory::FactoryB;

sub produce {
	my ($factory) = @_;
	my $pa = $factory->createProductA;
	my $pb = $factory->createProductB;
	print "factory ", $factory->name, " created two product: ", $pa->name,
	" ,", $pb->name, "\n";
}

produce(Factory::FactoryA->new({name => "Factory A#1"}));
produce(Factory::FactoryB->new({name => "Factory B#1"}));
