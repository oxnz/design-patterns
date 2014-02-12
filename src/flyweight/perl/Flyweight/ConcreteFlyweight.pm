package Flyweight::ConcreteFlyweight;
use parent Flyweight;

sub new {
	my ($class, $state) = @_;
	my $self = $class->SUPER::new($state);
	return $self;
}

sub operate {
	my ($self, $state) = @_;
	print scalar((caller(0))[3]), " intrinsic ", $self->{state}, " extrinsic ",
	$state, "\n";
}

1;
