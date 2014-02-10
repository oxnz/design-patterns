package Nokia;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = {};
	return bless $self, $class;
}

sub call {
	die "ABSTRACT CLASS METHOD CALL CANNOT BE CALLED DIRECTLY\n";
}

1;
