package Mediator;

use strict;
use warnings;
use Data::Dump;

sub new {
	my ($class, $args) = @_;
	my $self = {};
	return bless $self, $class;
}

sub colleagues {
	my ($self, $colleagues) = @_;
	$self->{colleagues} = $colleagues if defined($colleagues);
	return $self->{colleagues};
}

sub send {
	die "DO NOT CALL ABSTRACT METHOD SEND DIRECTLY\n";
}

1;
