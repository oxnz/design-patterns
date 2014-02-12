package Expression::Num;
use parent Expression;

use strict;
use warnings;

sub new {
	my $class = shift;
	return $class->SUPER::new;
}

sub interprete {
	my ($self, $i) = @_;
	my $itable = {
		0 => "ZERO",
		1 => "ONE",
		2 => "TWO",
		3 => "THREE",
		4 => "FOUR",
		5 => "FIVE",
	};
	return $itable->{$i};
}

1;
