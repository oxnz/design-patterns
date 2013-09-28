#!/usr/bin/perl
package AddStamp;
#
#@author: 0xnz
#@update: Sat Sep 28 13:10:24 CST 2013

use strict;
use warnings;

sub TIEHANDLE {
	my $class = shift;
	my $handle = shift;
	return bless \$handle, $class;
}

sub PRINT {
	my $handle = shift;
	my $stamp = localtime();

	print $handle "$stamp ", @_;
}

sub CLOSE {
	my $self = shift;
	close $self;
}

1;
