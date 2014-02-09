package Corporation;

use strict;
use warnings;

sub new {
	my ($class, $name) = @_;
	my $self = {
		name	=> $name,
	};
	return bless $self, $class;
}

sub name {
	my ($self, $name) = @_;
	$self->{name} = $name if defined($name);
	return $self->{name};
}

sub accept {
	die "INTERFACE METHOD ACCEPT CANNOT BE CALLED DIRECTLY\n";
}

1;
