package Algorithm;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = {};
	return bless $self, $class;
}

sub perform {
	die "INTERFACE METHOD PERFORM CANNOT BE CALLED DIRECTLY\n";
}

1;
