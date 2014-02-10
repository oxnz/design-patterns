package State;

use strict;
use warnings;

my $instance = undef;

sub new {
	my ($class, $args) = @_;
	my $self = {};
	return bless $self, $class;
}

sub instance {
	$instance = State->new if not defined($instance);
	return $instance;
}

sub handle {
	die "INTERFACE METHOD HANDLE CANNOT BE CALLED DIRECTLY\n";
}

1;
