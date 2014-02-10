#!/usr/bin/env perl

use strict;
use warnings;
use Factory::LumiaFactory;

my $factory = Factory::LumiaFactory->new;
my $nokia = $factory->create;
$nokia->call(911);
