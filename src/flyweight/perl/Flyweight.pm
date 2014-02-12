package Flyweight;

use strict;
use warnings;

sub new {
	my ($class, $state) = @_;
	my $self = {
		state => $state,
	};
	return bless $self, $class;
}

sub operate {
	die "ABSTRACT CLASS METHOD CANNOT BE CALLED DIRECTLY\n";
}

1;
