package Subject;

use strict;
use warnings;
use Data::Dump;

sub new {
	my ($class, $args) = @_;
	my $self = {
		name		=> $args->{name} || "anonymous",
		observers	=> $args->{observers} || [ qw() ],
	};
	return bless $self, $class;
}

sub name {
	my ($self, $name) = @_;
	$self->{name} = $name if defined($name);
	return $self->{name};
}

sub observers {
	my $self = shift;
	return $self->{observers};
}

sub attach {
	my ($self, $ob) = @_;
	my $obs = $self->observers;
	my $contain = undef;
	foreach (@$obs) {
		if ($_ eq $ob) {
			$contain = 1;
			last;
		}
	}
	if (!$contain) {
		push @$obs, $ob;
	}
}

sub detach {
	my ($self, $ob) = @_;
	my @obs = $self->observers;
	for (my $index = 0; $index < $#obs; ++$index) {
		if ($obs[$index] == $ob) {
			delete $obs[$index];
			last;
		}
	}
}

sub notify {
	my ($self) = @_;
	my $obs = $self->observers;
	foreach my $ob (@$obs) {
		$ob->update($self);
	}
}

1;
