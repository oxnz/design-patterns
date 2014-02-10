package Subject;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = {};
	return bless $self, $class;
}

sub request {
	die "INTERFACE METHOD REQUEST CANNOT BE CALLED DIRECTLY\n";
}

1;
