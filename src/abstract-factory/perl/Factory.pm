package Factory;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = {
		name	=> $args->{name} || "anonymous",
	};
	return bless $self, $class;
}

sub name {
	my ($self, $name) = @_;
	$self->{name} = $name if defined $name;
	return $self->{name};
}

sub createProductA {
	die "ABSTRACT CLASS METHOD CANNOT BE CALLED DIRECTLY\n";
}

sub createProductB {
	die "ABSTRACT CLASS METHOD CANNOT BE CALLED DIRECTLY\n";
}

1;
