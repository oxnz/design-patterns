#!/usr/bin/env perl

use strict;
use warnings;
use Factory;

my $nokiaFactory = Factory->new;
my $nokia = $nokiaFactory->create("Lumia");
$nokia->call(911);
$nokia = $nokiaFactory->create("Symbian");
$nokia->call(911);

