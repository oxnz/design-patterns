#!/usr/bin/env perl

use strict;
use warnings;
use ProtoType::ConcreteProtoType;
use Data::Dump;

my $p1 = ProtoType::ConcreteProtoType->new;
my $p2 = $p1->clone;
$p1->name("abc");
$p2->name("def");
dd $p1;
dd $p2;
