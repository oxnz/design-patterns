package Command::CopyCommand;
use parent Command;

use strict;
use warnings;

sub new {
	my ($class, $receiver) = @_;
	my $self = $class->SUPER::new;
	$self->{receiver} = $receiver;
	return $self;
}

sub execute {
	my $self = shift;
	$self->{receiver}->copy;
}

1;
