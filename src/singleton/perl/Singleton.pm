package Singleton;

use strict;
use warnings;
use feature 'state';
use vars qw(@VERSION);

@VERSION = 1.00;

sub new {
	my ($class) = @_;
	state $instance;

	if (! defined $instance) {
		$instance = bless {}, $class;
	}
	return $instance;
}

1;
