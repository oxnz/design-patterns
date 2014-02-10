package Factory::LumiaFactory;
use parent Factory;
use Nokia::Lumia;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = $class->SUPER::new($args);
	return $self;
}

sub create {
	return Nokia::Lumia->new;
}

1;
