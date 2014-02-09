package Adapter;

use strict;
use warnings;
use Data::Dump;

sub new {
	my ($class, $args) = @_;
	my $self = {
		subject	=> $args->{subject},
		sound	=> $args->{sound},
	};
	return bless $self, $class;
}

sub name {
	my ($self, $name) = @_;
	$self->{subject}->{name} = $name if defined($name);
	return $self->{subject}->name;
}

sub sound {
	my ($self) = @_;
	my $sound = $self->{sound};
	return $self->{subject}->$sound;
}

1;
