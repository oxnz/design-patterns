package ProductA;
use parent Product;

sub new {
	my ($class, $args) = @_;
	return $class->SUPER::new($args);
}

1;
