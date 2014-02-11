package ProductA::ProductB1;
use parent ProductA;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	return $class->SUPER::new($args);
}

1;
