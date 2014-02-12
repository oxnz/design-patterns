package Abstraction::RefinedAbstraction;
use parent Abstraction;

sub new {
	my ($class, $imp) = @_;
	my $self = $class->SUPER::new($imp);
	return $self;
}

sub operate {
	my $self = shift;
	print ref $self, " operate:\n";
	$self->{imp}->operateImp;
}

1;
