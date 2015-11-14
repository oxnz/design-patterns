#!/usr/bin/env perl
#
# upto.pl - demostrate how iterator was used with match option
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

use Test::More;

sub upto {
	my ($from, $to) = @_;
	return sub {
		return $from < $to ? $from++ : undef;
	};
}

for (my ($i, $iter) = (10, upto(10, 20)); my $val = $iter->(); ok($i++ == $val))
{}

use Iterator qw/Iterator/;

sub upto2 {
	my ($from, $to) = @_;
	return Iterator {
		return $from < $to ? $from++ : undef;
	};
}

for (my ($i, $iter) = (20, upto(20, 30)); my $val = $iter->(); ok($i++ == $val))
{}

{
	use Iterator qw/imap/;
	my $iter = upto(30, 40);
	$iter = imap(sub { return 2 * $_; }, $iter);
	my $i = 60;
	while ($_ = $iter->()) {
		ok($i == $_);
		$i += 2;
	}
}


{
	use Iterator qw/igrep/;
	my $iter = upto(40, 60);
	$iter= igrep(sub { return $_ % 2 == 0; }, $iter);
	my $i = 40;
	while ($_ = $iter->()) {
		ok($_ == $i);
		$i += 2;
	}

}
done_testing();
