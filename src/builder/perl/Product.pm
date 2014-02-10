package Product;

use strict;
use warnings;
use Data::Dump;

sub new {
	my ($class, $args) = @_;
	my $self = {};
	$self->{parts} = [];
	return bless $self, $class;
}

sub add {
	my ($self, $part) = @_;
	push $self->{parts}, $part;
}

sub show {
	print "Product consists of:\n";
	my $parts = shift->{parts};
	foreach (@$parts) {
		print $_, "\n";
	}
}

1;
