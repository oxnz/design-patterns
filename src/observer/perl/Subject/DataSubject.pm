package Subject::DataSubject;
use parent Subject;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = $class->SUPER::new($args);
	$self->{name} = $args->{name};
	$self->{data} = $args->{data};
	return $self;
}

sub data {
	my ($self, $data) = @_;
	if (defined($data)) {
		$self->{data} = $data;
		$self->notify;
	}
	return $self->{data};
}

1;
