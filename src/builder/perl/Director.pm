package Director;

use strict;
use warnings;

sub new {
	my ($class, $builder) = @_;
	return bless {
		builder	=> $builder,
	}, $class;
}

sub product {
	my $self = shift;
	$self->{builder}->buildPart1;
	$self->{builder}->buildPart2;
	return $self->{builder}->product;
}

1;
