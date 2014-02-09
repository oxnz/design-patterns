#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dump;
use Corporation::CorporationA;
use Corporation::CorporationB;
use Visitor::VisitorA;
use Visitor::VisitorB;

my @visitors = (
	Visitor::VisitorA->new("Alex"),
	Visitor::VisitorB->new("John"),
);
my @corporations = (
	Corporation::CorporationA->new("Intel"),
	Corporation::CorporationB->new("AMD"),
);

foreach my $visitor (@visitors) {
	foreach my $corporation (@corporations) {
		$corporation->accept($visitor);
	}
}
