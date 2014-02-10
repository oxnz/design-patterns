#!/usr/bin/env perl

use strict;
use warnings;
use Context;
use Algorithm::DES;
use Algorithm::RSA;

my $context = Context->new(Algorithm::RSA->new);
$context->perform;
