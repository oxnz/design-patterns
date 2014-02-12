package AbstractClass;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	return bless {}, $class;
}

sub templateMethod {
	my $self = shift;
	$self->primitiveOperation1;
	$self->primitiveOperation2;
}

sub primitiveOperation1 {
	die "ABSTRACT CLASS METHOD CANNOT BE CALLED DIRECTLY\n";
}

sub primitiveOperation2 {
	die "ABSTRACT CLASS METHOD CANNOT BE CALLED DIRECTLY\n";
}

1;
