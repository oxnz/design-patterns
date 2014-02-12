package Command::MacroCommand::DemoMacroCommand;
use parent Command::MacroCommand;

use strict;
use warnings;

sub new {
	my ($class, $args) = @_;
	my $self = $class->SUPER::new($args);
	$self->{commands} = [];
	return $self;
}

sub add {
	my ($self, $command) = @_;
	push $self->{commands}, $command;
}

sub remove {
	my ($self, $command) = @_;
	my $commands = $self->{commands};
	my $i = 0;
	for ($i = 0; $i < @$commands; ++$i) {
		last if $command == $commands->[$i];
	}
	splice(@$commands, $i, 1) if $i != @$commands;
}

sub execute {
	my $self = shift;
	my $commands = $self->{commands};
	foreach my $command (@$commands) {
		$command->execute;
	}
}

1;
