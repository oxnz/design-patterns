package Factory;

use strict;
use warnings;
use Nokia::Lumia;
use Nokia::Symbian;

sub new {
	my ($class, $args) = @_;
	my $self = {};
	return bless $self, $class;
}

sub create {
	my ($self, $model) = @_;
	return "Nokia::$model"->new;
}

1;
