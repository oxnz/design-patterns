package Animal;

use strict;
use warnings;
use Data::Dump;

sub new {
	my ($class, $args) = @_;
	my $self = {
		name	=> $args->{name} || "anonymous",
	};
	print "[WORLD]: An animal named ", $self->{name}, " was born\n";
	return bless $self, $class;
}

sub DESTROY {
	my $self = shift;
	print "[WORLD]: ", $self->name, " dies\n";
}

sub name {
	my ($self, $name) = @_;
	$self->{name} = $name if defined($name);
	return $self->{name};
}

1;
