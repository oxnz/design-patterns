package Factory;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = {};
	return bless $self, $class;
}

sub create {
	die "INTERFACE METHOD CREATE CANNOT BE CALLED DIRECTLY\n";
}

1;
