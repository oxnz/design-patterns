#!/usr/bin/env perl

use strict;
use warnings;
use Subject::RealSubject;
use Subject::Proxy;

my $proxy = Subject::Proxy->new(Subject::RealSubject->new);
$proxy->request();
