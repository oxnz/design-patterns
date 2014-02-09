package FileSys;

use strict;
use warnings;
use FileSys::AntiVirus;
use FileSys::Zipper;
use FileSys::Encryptor;

sub new {
	my ($class, $args) = @_;
	my $self = {
		antiVirus	=> FileSys::AntiVirus->new,
		zipper		=> FileSys::Zipper->new,
		encryptor	=> FileSys::Encryptor->new,
	};
	return bless $self, $class;
}

sub operate {
	my ($self) = @_;
	print "file sys operating ...\n";
	$self->{antiVirus}->operate;
	$self->{zipper}->operate;
	$self->{encryptor}->operate;
}

sub DESTROY {
	print "destroy\n";
}

1;
