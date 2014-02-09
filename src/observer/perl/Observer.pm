package Observer;

use Data::Dump;

sub new {
	my ($class, $args) = @_;
	my $self = {
		name	=> $args->{name} || "anonymous observer",
	};
	return bless $self, $class;
}

sub DESTROY {
	my $self = shift;
	print "destroy ", $self->name, "\n";
}

sub name {
	my ($self, $name) = @_;
	$self->name = $name if defined($name);
	return $self->{name};
}

sub update {
	my ($self, $subject) = @_;
	print "observer ", $self->name,
	" has recieved notification from subject ", $subject->name, "\n";
}

1;
