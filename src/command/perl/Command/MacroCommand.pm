package Command::MacroCommand;
use parent Command;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	return $class->SUPER::new($args);
}

sub add {
	die "INTERFACE COMMAND CANNOT BE CALLED DIRECTLY\n";
}

sub remove {
	die "INTERFACE COMMAND CANNOT BE CALLED DIRECTLY\n";
}

1;
