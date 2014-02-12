package Flyweight::UnsharedConcreteFlyweight;
use parent Flyweight;

sub new {
	my ($class, $args) = @_;
	my $self = $class->SUPER::new($args);
	$self{flyweights} = [];
	return bless $self;
}

sub add {
	my ($self, $f) = @_;
	my $fs = $self->{flyweights};
	push @fs, $f;
}

sub operate {
	my ($self, $state) = @_;
	my $fs = $self->{flyweights};
	foreach (@fs) {
		$_->operate($state);
	}
}

1;
