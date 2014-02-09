package FileSys::AntiVirus;
use parent FileSys;

sub new {
	my ($class, $args) = @_;
	my $self = {};
	return bless $self, $class;
}

sub operate {
	my ($self) = @_;
	print "anti virus operating ...\n";
}

1;
