package Builder;

use strict;
use warnings;
use Product;

sub new {
	return bless {
		product	=> Product->new,
	}, shift;
}

sub product {
	my ($self, $product) = @_;
	return $self->{product};
}

sub buildPart1 {
	die "ABSTRACT METHOD CANNOT BE CALLED DIRECTLY\n";
}

sub buildPart2 {
	die "ABSTRACT METHOD CANNOT BE CALLED DIRECTLY\n";
}

1;
