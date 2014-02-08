package Handler;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = {
		name		=> $args->{name} || "anonymous handler",
		successor	=> $args->{successor} || [ qw() ],
	};
	return bless $self, $class;
}

sub name {
	my ($self, $name) = @_;
	$self->{name} = $name if defined($name);
	return $self->{name};
}

sub successor {
	my ($self, $successor) = @_;
	$self->{successor} = $successor if defined($successor);
	return $self->{successor};
}

sub handleRequest {
	my ($self, $request) = @_;
	print "abstract handler ", $self->name,
	" cannot handle request ", $request, "\n";
}

1;
