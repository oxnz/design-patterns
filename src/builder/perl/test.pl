#!/usr/bin/env perl

use strict;
use warnings;

use Director;
use Builder::ConcreteBuilder;

my $director = Director->new(Builder::ConcreteBuilder->new);
my $product = $director->product;
$product->show;

