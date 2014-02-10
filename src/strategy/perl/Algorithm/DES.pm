package Algorithm::DES;
use parent Algorithm;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = $class->SUPER::new($args);
	return $self;
}

sub perform {
	print "DES perform\n";
}

1;
