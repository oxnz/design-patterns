package Factory::FactoryA;
use parent Factory;

use strict;
use warnings;

use Product::ProductA::ProductA1;
use Product::ProductB::ProductB1;

sub new {
	my ($class, $args) = @_;
	return $class->SUPER::new($args);
}

sub createProductA {
	return Product::ProductA::ProductA1->new({name => "FA_A#1"});
}

sub createProductB {
	return Product::ProductB::ProductB1->new({name => "FA_B#1"});
}

1;
