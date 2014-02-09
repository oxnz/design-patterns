package Visitor::VisitorB;
use parent Visitor;

use strict;
use warnings;

sub new {
	my ($class, $name) = @_;
	my $self = $class->SUPER::new($name);
	return $self;
}

sub visit {
	my ($self, $corporation) = @_;
	print "Visitor ", $self->name, "is visiting corporation ",
	$corporation->name, "\n";
}

1;
