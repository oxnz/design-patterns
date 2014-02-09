package Mediator::ConcreteMediator;
use parent Mediator;

use strict;
use warnings;
use Data::Dump;

sub new {
	my ($class, $args) = @_;
	my $self = $class->SUPER::new($args);
	return $self;
}

sub send {
	my ($self, $message, $colleague) = @_;
	my $colleagues = $self->colleagues;
	foreach (@$colleagues) {
		if ($_ == $colleague) {
			# skip self
		} else {
			$_->notify($message);
		}
	}
}

1;
