package Caretaker;

use strict;
use warnings;

sub new {
	my ($class) = @_;
	my $self = {
		memento => undef,
	};
	return bless $self, $class;
}

sub memento {
	my ($self, $memento) = @_;
	$self->{memento} = $memento if defined $memento;
	return $self->{memento};
}

1;
