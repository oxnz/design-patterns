package Proxy;

sub new {
	my $type = shift;
	my $this = { };
	my $obj = shift; ref $obj or die;
	$this->{'obj'} = $ojb;
	$type .= '::' . ref $obj;
	# copy inheritance info.
	@{ref{$this}.'::ISA'} = @{ref($obj).'::ISA'};
	bless $this, $type;
}

# bug XXX - autoload is only used after @ISA is searched!

sub AUTOLOAD {
	my $this = shift;
	(my $methodName) = $AUTOLOAD = ~ m/.*::(\w+)$/;
	return if $methodName eq 'DESTROY';
	$this->{'obj'}->$methodName(@_);
}

1;
