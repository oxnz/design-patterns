package Command;

sub new {
	my ($class, $args) = @_;
	my $self = {};
	return bless $self, $class;
}

sub execute {
	die "INTERFACE COMMAND CANNOT BE CALLED DIRECTLY\n";
}

1;
