package Implementator;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = {};
	return bless $self, $class;
}

sub operateImp {
	die "ABSTRACT CLASS METHOD CANNOT BE CALLED DIRECTLY\n";
}

1;
