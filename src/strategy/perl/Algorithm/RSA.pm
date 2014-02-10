package Algorithm::RSA;
use parent Algorithm;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = $class->SUPER::new($args);
	return $self;
}

sub perform {
	print "RSA perform\n";
}

1;
