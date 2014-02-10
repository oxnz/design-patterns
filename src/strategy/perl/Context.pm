package Context;

use strict;
use warnings;

sub new {
	my ($class, $algorithm) = @_;
	my $self = {
		algorithm	=> $algorithm,
	};
	return bless $self, $class;
}

sub perform {
	my $self = shift;
	$self->{algorithm}->perform;
}

1;
