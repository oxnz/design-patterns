package Handler::ConcreteHandler1;
use parent Handler;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = $class->SUPER::new($args);
	return $self;
}

sub handleRequest {
	my ($self, $request) = @_;
	if ($request > 0 and $request <= 10) {
		print "handler ", $self->name, " is handling request ", $request, "\n";
	} else {
		#print "passing request to successor ", $self->successor, "\n";
		$self->successor->handleRequest($request);
	}
}

1;
