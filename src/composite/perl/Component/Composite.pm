package Component::Composite;
use parent Component;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = $class->SUPER::new($args);
	$self->{composites} = [];
	return $self;
}

sub getComposite {
	return shift;
}

sub operate {
	my $self = shift;
	my $composites = $self->{composites};
	print ref $self, " begin:\n";
	foreach (@$composites) {
		$_->operate;
	}
	print ref $self, " end\n";
}

sub add {
	my ($self, $composite) = @_;
	my $composites = $self->{composites};
	push @$composites, $composite;
}

sub remove {
	my ($self, $composite) = @_;
	my $composites = $self->{composites};
	my $i = 0;
	for ($i = 0; $i < @$composites; ++$i) {
		last if $composites->[$i] eq $composite;
	}
	return if $i eq @$composites;
	splice(@$composites, $i, 1);
}

sub getChild {
	my $self = shift;
	return $self->{composites};
}

1;
