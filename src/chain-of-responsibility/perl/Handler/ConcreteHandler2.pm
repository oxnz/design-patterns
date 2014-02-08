package Handler::ConcreteHandler2;
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
	if ($request > 10 and $request <= 20) {
		print "handler ", $self->name, " is handling request ", $request, "\n";
	} else {
		#print "passing request to successor ", $self->successor, "\n";
		$self->successor->handleRequest($request);
	}
}

1;
