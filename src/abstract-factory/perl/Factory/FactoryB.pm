package Factory::FactoryB;
use parent Factory;

use strict;
use warnings;

use ProductA::ProductA2;
use ProductB::ProductB2;

sub new {
	my ($class, $args) = @_;
	return $class->SUPER::new($args);
}

sub createProductA {
	return ProductA::ProductA2->new({name => "FB_A#1"});
}

sub createProductB {
	return ProductB::ProductB2->new({name => "FB_B#1"});
}

1;
