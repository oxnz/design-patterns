package State::ConcreteStateB;
use parent State;

use strict;
use warnings;
use State::ConcreteStateA;
use Data::Dump;

sub new {
	my ($class, $args) = @_;
	my $self = $class->SUPER::new($args);
	return $self;
}

sub handle {
	my ($self, $context) = @_;
	print "ConcreteStateB handle method\n";
	$context->state(State::ConcreteStateA->new);
}

1;
