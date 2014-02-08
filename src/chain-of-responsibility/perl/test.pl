#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dump;
use Handler::ConcreteHandler1;
use Handler::ConcreteHandler2;
use Handler::ConcreteHandler3;

my $h1 = Handler::ConcreteHandler1->new({
		name	=> "concrete handler 1",
	});
my $h2 = Handler::ConcreteHandler2->new({
		name	=> "concrete handler 2",
	});
my $h3 = Handler::ConcreteHandler3->new({
		name	=> "concrete handler 3",
	});

$h1->successor($h2);
$h2->successor($h3);

my @requests = qw(2 5 14 22 18 3 35 27 20);
print "requests: ";
dd @requests;
foreach my $request (@requests) {
	$h1->handleRequest($request);
}

