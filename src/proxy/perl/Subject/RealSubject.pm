package Subject::RealSubject;
use parent Subject;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = $class->SUPER::new($args);
	return $self;
}

sub request {
	print "Handling request in real subject\n";
}

1;
