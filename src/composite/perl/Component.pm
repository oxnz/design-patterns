package Component;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = {};
	return bless $self, $class;
}

sub getComposite {
	die "INTERFACE METHOD CANNOT BE CALLED DIRECTLY\n";
}

sub operate {
	die "INTERFACE METHOD CANNOT BE CALLED DIRECTLY\n";
}

sub add {
	die "INTERFACE METHOD CANNOT BE CALLED DIRECTLY\n";
}

sub remove {
	die "INTERFACE METHOD CANNOT BE CALLED DIRECTLY\n";
}

sub getChild {
	die "INTERFACE METHOD CANNOT BE CALLED DIRECTLY\n";
}

1;
