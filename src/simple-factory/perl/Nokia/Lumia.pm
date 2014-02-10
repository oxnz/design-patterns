package Nokia::Lumia;
use parent Nokia;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = $class->SUPER::new;
	return $self;
}

sub call {
	my ($self, $number) = @_;
	print "calling ", $number, " with a ", ref $self, "\n";
}

1;
