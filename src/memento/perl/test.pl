#!/usr/bin/env perl
# auther: oxnz
# coding: utf-8

use strict;
use warnings;

use Originator;
use Caretaker;

my $orig = Originator->new;
$orig->state("open");
$orig->showState;
my $memento = $orig->createMemento;
my $caretaker = Caretaker->new;
$caretaker->memento($memento);
$orig->state('close');
$orig->showState;
$orig->restoreMemento($caretaker->memento);
$orig->showState;
