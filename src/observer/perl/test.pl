#!/usr/bin/env perl

use strict;
use warnings;
use Subject::DataSubject;
use Observer::DataObserver;

my $d1 = Subject::DataSubject->new({
		name	=> "d1",
		data	=> 123,
	});

my $d2 = Subject::DataSubject->new({
		name	=> "d2",
		data	=> 234,
	});

my $ob1 = Observer::DataObserver->new({
		name	=> "ob1",
	});
my $ob2 = Observer::DataObserver->new({
		name	=> "ob2",
	});

$d1->attach($ob1);
$d1->attach($ob2);
$d2->attach($ob1);
$d2->attach($ob2);

print "===> setting d1 to 10, d2 to 11\n";

$d1->data(10);
$d2->data(11);

$d1->detach($ob2);
$d2->detach($ob1);

print "===> setting d1 to 11, d2 to 12\n";

$d1->data(11);
$d2->data(12);

print "===> setting d1 to 12, d2 to 13\n";

$d1->detach($ob1);
$d2->detach($ob2);
$d1->data(12);
$d2->data(13);
