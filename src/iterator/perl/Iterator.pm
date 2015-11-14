#!/usr/bin/env perl
#
# Iterator.pm - Iterator  as well as Syntax Suguar
#
# Copyright (c) 2015, Oxnz
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
# 
# 1. Redistributions of source code must retain the above copyright notice, this
#    list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

use strict;
use warnings;

package Iterator;

use base qw(Exporter);

@Iterator::EXPORT_OK = qw/NEXTVAL Iterator imap igrep/;

%Iterator::EXPORT_TAGS = ('all' => \@Iterator::EXPORT_OK);

sub NEXTVAL { $_[0]->() }

# Iterator Syntax Sugar
sub Iterator(&) { return $_[0]; }

sub imap(&$) {
	my ($transform, $iter) = @_;
	return Iterator {
		local $_ = NEXTVAL($iter);
		return unless defined $_;
		return $transform->();
	}
}

sub igrep(&$) {
	my ($func, $iter) = @_;
	return Iterator {
		local $_;
		while ($_ = $iter->()) {
			return $_ if $func->();
		}
		return;
	}
}

=pod

=head1 Iterator

Another iterator implementation

=head1 Example

=over

	sub upto {
		my ($from, $to) = @_;
		return Iterator {
			return $from < $to ? $from++ : undef;
		};
	}

=back

=cut
