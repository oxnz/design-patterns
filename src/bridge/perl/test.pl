#!/usr/bin/env perl
# auther: oxnz
# coding: utf-8

use strict;
use warnings;

use Abstraction::RefinedAbstraction;
use Implementator::ConcreteImplementatorA;
use Implementator::ConcreteImplementatorB;

my $abs = Abstraction::RefinedAbstraction->new(
	Implementator::ConcreteImplementatorA->new);
$abs->operate;
$abs = Abstraction::RefinedAbstraction->new(
	Implementator::ConcreteImplementatorB->new);
$abs->operate;
