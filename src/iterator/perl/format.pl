#!/usr/bin/env perl
#
# format.pl - demostrate how to use format
# updated: Fri Nov 13 11:29:54 CST 2015
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

my $name = "John Smith";
my $salary = 79899.20;
my $desc = "The man who want to dominate the world with his toothbrush.";
my $header = "-----*=====\e\[31mhello\e\[0m====*----";
my $footer = '=' x 100;

print $header . "\n";
my $lino = $.;

my $cmd = "find . -name '*breackets*' -exec rm -rf {} \;";
my $i;
my $p;
my @item;
format =
@<<<<< @<<<< ^#####.##%      @<<<<<<<<<<<...
@item
.
for $i (1..10) {
	$p = int(rand(100000));
	$cmd = "ls -l" if $i == 4;
	@item = ($i, $p, $i, $cmd);
write;
}
