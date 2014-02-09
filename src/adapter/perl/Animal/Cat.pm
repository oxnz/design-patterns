package Animal::Cat;
our @ISA = qw/Animal/;

sub new {
	my ($class, $args) = @_;
	my $self = $class->SUPER::new($args);
	return bless $self, $class;
}

sub meow {
	return "meow!";
}

1;
