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

my $ob1 = Observer::DataObserver->new;
my $ob2 = Observer::DataObserver->new;

$d1->attach($ob1);
$d1->attach($ob2);
$d2->attach($ob1);
$d2->attach($ob2);

print "setting d1 to 10\n";
d1->data(10);
