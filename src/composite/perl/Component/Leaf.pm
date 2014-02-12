package Component::Leaf;
use parent Component;

use strict;
use warnings;

sub new {
	my ($class, $name) = @_;
	my $self = $class->SUPER::new;
	$self->{name} = $name || "anonymous";
	return $self;
}

sub name {
	my ($self, $name) = @_;
	$self->{name} = $name if defined $name;
	return $self->{name};
}

sub operate {
	my $self = shift;
	print scalar((caller(0))[3]), " ", $self->name, "\n";
}

sub getComposite {
	return undef;
}

sub add {
	my ($self, $component) = @_;
	return undef;
}

sub remove {
	my ($self, $component) = @_;
	return undef;
}

sub getChild {
	return undef;
}

1;
