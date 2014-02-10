package State::ConcreteStateA;
use parent State;

use strict;
use warnings;
use State::ConcreteStateB;
use Data::Dump;

sub new {
	my ($class, $args) = @_;
	my $self = $class->SUPER::new($args);
	return $self;
}

sub handle {
	my ($self, $context) = @_;
	print "ConcreteStateA handle method\n";
	$context->state(State::ConcreteStateB->new);
}

1;
