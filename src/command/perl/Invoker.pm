package Invoker;

use strict;
use warnings;

sub new {
	my ($class, $command) = @_;
	my $self = {
		command => $command,
	};
	return bless $self, $class;
}

sub action {
	my $self = shift;
	$self->{command}->execute;
}

1;
