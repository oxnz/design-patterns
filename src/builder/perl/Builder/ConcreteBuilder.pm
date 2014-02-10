package Builder::ConcreteBuilder;
use parent Builder;

use strict;
use warnings;

sub new {
	my $class = shift;
	my $self = $class->SUPER::new;
	return $self;
}

sub buildPart1 {
	my $self = shift;
	$self->{product}->add("part1");
}

sub buildPart2 {
	my $self = shift;
	$self->{product}->add("part2");
}

1;
