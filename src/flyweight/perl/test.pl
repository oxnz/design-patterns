#!/usr/bin/env perl

use strict;
use warnings;

use FlyweightFactory;

my $ff = FlyweightFactory->new;
my $f = $ff->getFlyweight("state A");
$f->operate("state x");
$f = $ff->getFlyweight("state B");
$f->operate("state y");
$f = $ff->getFlyweight(["state A", "state B"]);
$f->operate("state z");
