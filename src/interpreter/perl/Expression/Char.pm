package Expression::Char;
use parent Expression;

sub new {
	my $class = shift;
	return $class->SUPER::new;
}

sub interprete {
	my ($self, $str) = @_;
	return uc $str;
}

1;
