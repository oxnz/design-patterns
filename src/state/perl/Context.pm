package Context;

use strict;
use warnings;
use State::ConcreteStateA;

sub new {
	my ($class, $args) = @_;
	my $self = {
		state	=> State::ConcreteStateA->instance,
	};
	return bless $self, $class;
}

sub state {
	my ($self, $state) = @_;
	$self->{state} = $state if defined($state);
	return $self->{state};
}

sub request {
	my ($self) = @_;
	$self->state->handle($self);
}

1;
