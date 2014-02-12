#!/usr/bin/env perl
# auther: oxnz
# coding: utf-8

use strict;
use warnings;

use Component::Composite;
use Component::Leaf;

my $leaf1 = Component::Leaf->new("first leaf");
my $leaf2 = Component::Leaf->new("second leaf");
my $composite = Component::Composite->new;
$composite->add($leaf1);
$composite->add($leaf2);
$composite->operate;
$composite->remove($leaf2);
$composite->operate;
$composite->remove($leaf1);
