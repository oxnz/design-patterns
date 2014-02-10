package State;

use strict;
use warnings;
use feature 'state';

sub new {
	my ($class, $args) = @_;
	my $self = {};
	return bless $self, $class;
}

sub instance {
	my $class = shift;
	return $class->new;
}

sub handle {
	die "INTERFACE METHOD HANDLE CANNOT BE CALLED DIRECTLY\n";
}

1;
