package AbstractClass::ConcreteClass;
use parent AbstractClass;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = {};
	return bless $self, $class;
}

sub primitiveOperation1 {
	print scalar((caller(0))[3]), "\n";
}

sub primitiveOperation2 {
	print scalar((caller(0))[3]), "\n";
}

1;
