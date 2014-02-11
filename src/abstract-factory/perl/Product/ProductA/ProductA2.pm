package Prodct::ProductA::ProductA2;
use parent Product::ProductA;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	return $class->SUPER::new($args);
}

1;
