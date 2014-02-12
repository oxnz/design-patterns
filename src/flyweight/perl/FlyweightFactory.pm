package FlyweightFactory;

use strict;
use warnings;

use Flyweight::ConcreteFlyweight;
use Flyweight::UnsharedConcreteFlyweight;

sub new {
	my ($class, $args) = @_;
	my $self = {
		flyweights => {},
	};
	return bless $self, $class;
}

sub getFlyweight {
	my ($self, $state) = @_;
	if (ref $state eq "ARRAY") {
		my $uf = Flyweight::UnsharedConcreteFlyweight->new;
		foreach (@$state) {
			$uf->add($self->getFlyweight($_));
		}
		return $uf;
	} else {
		my $fs = $self->{flyweights};
		$fs->{$state} = Flyweight::ConcreteFlyweight->new($state)
		if not defined $fs->{$state};
		return $fs->{$state};
	}
}

1;
