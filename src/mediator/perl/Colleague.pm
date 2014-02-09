package Colleague;

use strict;
use warnings;

sub new {
	my ($class, $mediator) = @_;
	my $self = {
		mediator	=> $mediator,
	};
	return bless $self, $class;
}

sub send {
	my ($self, $message) = @_;
	$self->{mediator}->send($message, $self);
}

sub notify {
	die "DO NOT CALL ABSTRACT METHOD NOTIFY DIRECTLY\n";
}

1;
