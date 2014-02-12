package Interpreter;

use strict;
use warnings;

use Expression::Num;
use Expression::Char;

sub new {
	return bless {}, shift;
}

sub execute {
	my ($self, $str) = @_;
	foreach (split //, $str) {
		my $expr;
		if (m/^[0-9]$/) {
			$expr = Expression::Num->new;
		} else {
			$expr = Expression::Char->new;
		}
		print $expr->interprete($_), " ";
	}
	print "\n";
}

1;
