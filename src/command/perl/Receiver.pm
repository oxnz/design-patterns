package Receiver;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = {
		name => $args->{name},
	};
	return bless $self, $class;
}

sub name {
	my ($self, $name) = @_;
	$self->{name} = $name if defined $name;
	return $self->{name};
}

sub copy {
	my $self = shift;
	print $self->name, " do copy action\n";
}

sub paste {
	my $self = shift;
	print $self->name, " do paste action\n";
}

1;
