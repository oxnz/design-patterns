#!/usr/bin/env perl

use strict;
use warnings;
use State::ConcreteStateA;
use State::ConcreteStateB;
use Context;

my $context = Context->new;
$context->request;
$context->request;
$context->request;
$context = undef;
