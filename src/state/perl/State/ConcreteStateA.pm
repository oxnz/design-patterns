package State::ConcreteStateA;
use parent State;

use strict;
use warnings;
use State::ConcreteStateB;
use Data::Dump;
use feature 'state';

sub new {
	my ($class, $args) = @_;
	state $instance;
	if (! defined $instance) {
		$instance = $class->SUPER::new($args);
	}
	return $instance;
}

sub handle {
	my ($self, $context) = @_;
	print "ConcreteStateA handle method\n";
	$context->state(State::ConcreteStateB->instance);
}

1;
