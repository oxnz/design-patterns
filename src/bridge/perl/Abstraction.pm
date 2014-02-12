package Abstraction;

use strict;
use warnings;

sub new {
	my ($class, $imp) = @_;
	my $self = {
		imp => $imp,
	};
	return bless $self, $class;
}

sub implementator {
	my ($self, $imp) = @_;
	$self->{imp} = $imp if defined $imp;
	return $self->{imp};
}

sub operate {
	my $self = shift;
	$self->{imp}->operateImp;
}

1;
