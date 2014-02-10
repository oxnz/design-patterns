package State::ConcreteStateB;
use parent State;

use strict;
use warnings;
use State::ConcreteStateA;
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
	print "ConcreteStateB handle method\n";
	$context->state(State::ConcreteStateA->instance);
}

1;
