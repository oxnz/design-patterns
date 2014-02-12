#!/usr/bin/env perl
# auther: oxnz
# coding: utf-8

use strict;
use warnings;

use Interpreter;

my $interpreter = Interpreter->new;
$interpreter->execute("12345abcde");
