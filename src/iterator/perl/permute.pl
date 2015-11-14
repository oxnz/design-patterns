#!/usr/bin/env perl
#
# permute.pl - demostrate how iterator was used with match option
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

sub permute {
	my @items = @{ $_[0] };
	my @perms = @{ $_[1] };
	unless (@items) {
		print "@perms\n";
	} else {
		my (@nitems, @nperms);
		foreach my $i (0 .. $#items) {
			@nitems = @items;
			@nperms = @perms;
			unshift (@nperms, splice(@nitems, $i, 1));
			permute([@nitems], [@nperms]);
		}
	}
}

permute([qw/A B C D/], []);

sub Iterator(&) { return $_[0]; }

sub pattern_to_permutation {
	my $pattern = shift;
	my @items = @{shift()};
	my @r;
	for (@$pattern) {
		push @r, splice(@items, $_, 1);
	}
	@r;
}

sub n_to_pat {
	my ($n, $length) = @_;
	my @odometer;
	for my $i (1 .. $length) {
		unshift @odometer, $n % $i;
		$n = int($n/$i);
	}
	return $n ? () : @odometer;
}

sub permute2 {
	my @items = @_;
	my $n = 0;
	return Iterator {
		my @pattern = n_to_pat($n, scalar(@items));
		my @result = pattern_to_permutation(\@pattern, \@items);
		++$n;
		return @result;
	};
}

my $it = permute2('A' .. 'D');

print "iterator version:\n";
while (my @p = $it->()) {
	print "@p\n";
}

sub permute_flop {
	my @items = @_;
	my $n = 0;
	return Iterator {
		++$n;
		return @items if $n == 0;
		my $i;
		my $p = $n;
		for ($i = 1; $i <= @items && $p%$i == 0; ++$i) {
			$p /= $i;
		}
	}
}

done_testing();
