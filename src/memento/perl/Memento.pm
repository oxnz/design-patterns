package Memento;

use strict;
use warnings;

sub new {
	my ($class, $state) = @_;
	my $self = {
		state => $state,
	};
	return bless $self, $class;
}

sub state {
	my ($self, $state) = @_;
	$self->{state} = $state if defined $state;
	return $self->{state};
}

1;
