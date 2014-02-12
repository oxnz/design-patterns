package Command::PasteCommand;
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
	$self->{receiver}->paste;
}

1;
