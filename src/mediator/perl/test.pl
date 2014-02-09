#!/usr/bin/env perl

use strict;
use warnings;
use Mediator::ConcreteMediator;
use Colleague::ConcreteColleague1;
use Colleague::ConcreteColleague2;

my $mediator = Mediator::ConcreteMediator->new;
my $c1 = Colleague::ConcreteColleague1->new($mediator);
my $c2 = Colleague::ConcreteColleague2->new($mediator);
$mediator->colleagues([$c1, $c2]);
$c1->send("Hi, Colleague2, I'm colleague 1");
$c2->send("Hi, Colleague1, I'm colleague 2");
