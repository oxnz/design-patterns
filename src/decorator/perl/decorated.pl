#!/usr/bin/perl
#@author: 0xnz
#@update: Sat Sep 28 13:15:59 CST 2013
#@link: http://www.perl.com/pub/2003/06/13/design1.html

use strict;
use warnings;

use AddStamp;

open LOG, ">output.tmp" or die "Couldn't write output.tmp: $!\n";
# After opening the file for writing as usual, I use the built-in tie function
# to bind the LOG handle to the AddStamp class under the name STAMPED_LOG.
# After that, I refer exclusively to STAMPED_LOG.
tie *STAMPED_LOG, "AddStamp", *LOG;

while (<>) {
	print STAMPED_LOG;
}

close STAMPED_LOG;

