package Handler::ConcreteHandler3;
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
	if ($request > 20 and $request <= 30) {
		print "handler ", $self->name, " is handling request ", $request, "\n";
	} else {
		print "handler ", $self->name,
		" cannot handle request ", $request, "\n";
	}
}

1;
