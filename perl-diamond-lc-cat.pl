#!/usr/bin/env perl
use strict;
use warnings;
use Getopt::Long;

# Parse args
my $verbose = 0;
GetOptions(
    'verbose' => \$verbose,
);

# Optional input file (defaults to STDIN if none)
@ARGV = @ARGV ? @ARGV : ('-');

sub process_line {
    my ($line) = @_;
    chomp $line;
    return $line if $line =~ /^\s*$/; # skip empty lines
    return lc($line); # lowercase example
}

print "--- Processing ---\n" if $verbose;
while (<>) {
    print process_line($_), "\n";
}
