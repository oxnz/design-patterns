package Factory::FactoryA;
use parent Factory;

use strict;
use warnings;

use ProductA::ProductA1;
use ProductB::ProductB1;

sub new {
	my ($class, $args) = @_;
	return $class->SUPER::new($args);
}

sub createProductA {
	return ProductA::ProductA1->new({name => "FA_A#1"});
}

sub createProductB {
	return ProductB::ProductB1->new({name => "FA_B#1"});
}

1;
