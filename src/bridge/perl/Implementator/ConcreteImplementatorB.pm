package Implementator::ConcreteImplementatorB;
use parent Implementator;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = $class->SUPER::new($args);
	return $self;
}

sub operateImp {
	my $self = shift;
	print ref $self, " operate Imp\n";
}

1;
