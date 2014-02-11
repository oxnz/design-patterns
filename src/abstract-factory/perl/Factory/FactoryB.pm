package Factory::FactoryB;
use parent Factory;

use strict;
use warnings;

use Product::ProductA;
use Product::ProductB;

sub new {
	my ($class, $args) = @_;
	return $class->SUPER::new($args);
}

sub createProductA {
	return Product::ProductA->new({name => "FB_A#1"});
}

sub createProductB {
	return Product::ProductB->new({name => "FB_B#1"});
}

1;
