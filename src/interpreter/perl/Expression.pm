package Expression;

use strict;
use warnings;

sub new {
	return bless {}, shift;
}

sub interprete {
	my ($self, $str) = @_;
	return $str;
}

1;
