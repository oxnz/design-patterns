package FileSys::Encryptor;
use parent FileSys;

sub new {
	my ($class, $args) = @_;
	my $self = {};
	return bless $self, $class;
}

sub operate {
	my ($self) = @_;
	print "encryptor operating ...\n";
}

1;
