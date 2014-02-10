package Subject::Proxy;
use parent Subject;

use strict;
use warnings;

sub new {
	my ($class, $subject) = @_;
	my $self = $class->SUPER::new;
	$self->{subject} = $subject;
	return $self;
}

sub request {
	my $self = shift;
	$self->{subject}->request;
}

1;
