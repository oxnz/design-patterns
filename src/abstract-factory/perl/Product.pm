package Product;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = {
		name	=> $args->{name},
	};
	return bless $self, $class;
}

sub name {
	my ($self, $name) = @_;
	$self->{name} = $name if defined $name;
	return $self->{name};
}

1;
