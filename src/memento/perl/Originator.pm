package Originator;

use strict;
use warnings;
use Memento;

sub new {
	my ($class) = @_;
	my $self = {
	};
	return bless $self, $class;
}

sub createMemento {
	my $self = shift;
	return Memento->new($self->{state});
}

sub restoreMemento {
	my ($self, $memento) = @_;
	$self->{state} = $memento->state;
}

sub state {
	my ($self, $state) = @_;
	$self->{state} = $state if defined $state;
	return $self->{state};
}

sub showState {
	my $self = shift;
	print ref $self, " status: ", $self->state, "\n";
}

1;
