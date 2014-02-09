package Animal::Dog;
#use parent Animal;
use Animal;
our @ISA = qw/Animal/;

use strict;
use warnings;
use Data::Dump;

sub new {
	my ($class, $args) = @_;
	my $self = $class->SUPER::new($args);
	return bless $self, $class;
}

sub bark {
	return "woof!";
}

1;
