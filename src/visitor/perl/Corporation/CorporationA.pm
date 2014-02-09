package Corporation::CorporationA;
use parent Corporation;

use strict;
use warnings;

sub new {
	my ($class, $name) = @_;
	my $self = $class->SUPER::new($name);
	return $self;
}

sub accept {
	my ($self, $visitor) = @_;
	print "Corporation ", $self->name, " accepting visitor ", $visitor->name,
	"\n";
	$visitor->visit($self);
}

1;
