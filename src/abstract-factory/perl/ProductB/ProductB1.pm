package ProductB::ProductB1;
use parent ProductB;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	return $class->SUPER::new($args);
}

1;
