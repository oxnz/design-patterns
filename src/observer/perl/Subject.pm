package Subject;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = {
		observers	=> $args->{observers},
	};
	return bless $self, $class;
}

sub observers {
	my $self = shift;
	return $self->observers;
}

sub attach {
	my ($self, $ob) = @_;
	my @obs = $self->observers;
	my $contain = undef;
	foreach (@obs) {
		if ($_ eq $ob) {
			$contain = 1;
		}
	}
	if (!$contain) {
		push $ob, @obs;
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
	my @obs = $self->observers;
	foreach (@obs) {
		$_->update($self);
	}
}

1;
