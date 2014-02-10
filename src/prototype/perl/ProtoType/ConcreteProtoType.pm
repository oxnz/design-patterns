package ProtoType::ConcreteProtoType;
use parent ProtoType;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = $class->SUPER::new($args);
	return $self;
}

sub clone {
	my $class = ref shift;
	return $class->new;
}

1;
